# Gallery

This is the script I use for my website's image gallery right now.  Rather than using some sort of cms to handle images I just place (any number of) new images in my directory and it'll add them to my gallery page. I made a video on it [here](https://youtu.be/kI2Cy0717CU)

## Dependancies

Make sure you've got imagemagick and sed on your machine.

## General usage

Just place your image files in an "images" directory at the root of your website and make sure images.html has a header: `<h1>Images</h1>`.  Run the script in the root directory of your site and it'll prompt you for a caption for each image, I may add in a feature that shows you each image as it asks for the caption, making it easier to remember which is which when adding in batches, but for now I've left this out since I know people use different image viewers. After you've given each a caption, the images will be added to your images.html file as thumbnails.
You can run this script locally if you're running GNU/Linux on your desktop, or you can run the script on your vps, either will work just fine as long as you have imagemagick installed.

## Customising the image tag

If you want to change the html for each image you add, you'll have to do that manually.  This can be done by editing the sed command in the script.  **Be sure to remember to escape characters since we're using " insead of '**.
