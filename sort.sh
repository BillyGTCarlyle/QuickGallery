#!/bin/sh

for i in images/*.jpg
do
if [ ! -f images/thumbnails/${i#"images/"} ]; then
	convert $i -geometry x200 images/thumbnails/${i#"images/"}
	convert $i -geometry x1080 images/smaller/${i#"images/"}

	sed -i "/<h1>Images<\/h1>/a\
\<div class=\"responsive\"\>\n\
	\<a href=\"$i\"\>\n\
	\<div class=\"gallery\"\>\n\
		\<img src=\"images\/thumbnails\/${i#"images/"}\" alt=\"\"\>\n\
		\<div class=\"desc\"\>\<\/div\>\n\
	\<\/div\>\n\
	\<\/a\>\n\
\<\/div\>" images.html
fi
done
