# Swift's GUI Best Practices - Geoff Roodt
![alt text](https://www.theinquirer.net/w-images/4aac0508-77fc-41eb-aab5-4a55bd1e07a8/0/swiftlogo-580x358.jpeg "Logo Title Text 1")

## Formatting Content
> "Create a layout that fits the screen of an iOS device. Users should see primary content without zooming or scrolling horizontally." - Apple

Apple states that 3 of their core iOS design themes are clarity, deference and depth ([iOS Design Themes]). Creating an application that correctly formats content to display cleanly on various screen sizes is crucial to producing an enjoyabl experience for the user, drawn from the clarifty, deference and depth properly formatted content creates.  

**Imagine how much it would it suck if you downloaded an app where you had to zoom out every time you used it?**  


![alt text](https://devimages.apple.com.edgekey.net/design/tips/images/interactivity-formatting-content.png "Formatting Content Best Practice")


## Touch Controls
> "Use UI elements that are designed for touch gestures to make interaction with your app feel easy and natural." - Apple  

As far as is possible, **use the UI controls that Swift provides for you**. They are designed to have optimal interaction, smooth scrolling, easily integrated into your project etc etc. It is counter productive to create your own controls which might not (and most likely won't) fit the iOS general feel/theme, when they already exist!  

The touch events that your controls respond to should also be intuitive- for example, to send a message the control should listen for the button tap rather than the button long press... These small considerations will help make the user's interaction with your app feel easy and natural.  


![alt text](https://devimages.apple.com.edgekey.net/design/tips/images/interactivity-touch-controls.png "Touch Control Best Practice")


## Hit Targets
> "Create controls that measure at least 44 points x 44 points so they can be accurately tapped with a finger." - Apple  

It is imperative that when you create controls, they are appropriately sized. This is something we all do, but Apple's best practices state the controls which have hit targets should be at least 44 points x 44 points. As their description emplies, the reason is quite simple- **for accurately tapping!**.  

Once again, we need to keep in mind the clear, deference and depth factors when planning the GUI and associated UI Elements. That means that we must create controls which can accurately and easily be touched by the user!  


![alt text] (https://devimages-cdn.apple.com/design/tips/images/interactivity-hit-areas.png "Hit Target Best Practice")

## Text Size
> "Text should be at least 11 points so it's legible at a typical viewing distance without zooming." - Apple  

Next, we take into consideration accessibility of our application for users who potentially may have some kind of disabillity.  
**Ensuring the text has a minimum size of 11 points will faciliate this**. In today's age it is (once again) imperative to have clear, clean text that is readable. This is doubly important for users with eyesight/reading disabilitiees!  

How would you feel if you discovered an awesome app but couldn't read anything on it? With Apple decreeing a standard minimum text size, and provided developers like you and I follow it, it makes it very familiar and natural for the user to read whatever text we display. There is also a sense of unity right across all the apps, which initself is highly desireable.  

![alt text](https://devimages-cdn.apple.com/design/tips/images/readability-text-size.png "Text Size Best Practice")

## Contrast
> "Make sure there is ample contrast between the font color and the background so text is legible." - Apple  

**CONTRAST CONTRAST CONTRAST**  

Contrast, not location, is key here. Just like blending. Blending is key! (Ask your girlfriend or mother if unsure)...  

While the retro contrast might be a doer, its not necessarily a good idea. For example, a lot of people may have difficulty reading the text in the image below (courtesy of Apple).  
Why? Well, simply because there isn't **ample** contrast. If those retro colours were on a black backhground then the case for ample contrast could be argued; but as it stands now, no sir!  

Text should be at least 11 points in size, and be readable due to the ample contrast you create between titles/headers/body text/minor text. If the user can't read it don't expect them to follow what it says!  
(_This is not a good business model since they may have a loop hole to purposefully ignore sensitive information - ergo, ensure the text is readable by making use of ample contrast!_)  

![alt text](https://devimages-cdn.apple.com/design/tips/images/readability-contrast.png "Contrast Best Practice")  


## Spacing
> "Don't let text overlap. Improve legibility by increasing line height or letter spacing." - Apple  

Lorem ipsum dolor sit amet, consectetur adipiscing elit.Aliquam tempor ligula non aliquam malesuada.Nunc eu erat mattis, eleifend ex eget, laoreet nunc.Maecenas hendrerit ultrices augue, quis pretium libero condimentum vel.Suspendisse posuere dapibus orci ut congue.Cras porta elementum massa ut gravida.Curabitur eu sollicitudin ante.Aenean tempus enim eget molestie venenatis.Etiam dictum leo nec sem cursus laoreet.Mauris mattis elementum leo vel mattis.Nulla justo purus, fermentum ac rutrum sed, luctus ullamcorper lectus.Nunc fringilla, felis id dapibus dictum, mauris nulla maximus neque, nec facilisis elit nunc sit amet orci.Suspendisse potenti.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Suspendisse commodo nisl ac suscipit porta.Sed ut nunc vel dolor tristique viverra et fringilla leo.Vivamus accumsan orci fringilla leo ultricies fringilla.Aliquam rhoncus pulvinar euismod.Quisque dictum lacinia accumsan.Nullam commodo leo vel ipsum consequat ornare.Integer maximus lobortis nunc sed maximus.Nulla ornare varius dui, iaculis consectetur nibh.Sed molestie tincidunt gravida.Etiam porta at augue at auctor.Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  

**Good luck reading that!** Imagine how much easier it would be if you could read Latin?  
**_And imagine how much easier it would be if there were spaces!!_**  

Don't be afraid to space out your text, devs! Remember that its for the benefit of your users, especially those whom may have disabilities and have elected to use your app! Don't let them down!!  

![alt text](https://devimages-cdn.apple.com/design/tips/images/readability-spacing.png "Spacing Best Practice")  


## High Resolutiong and Distortion
> "Provide high-resolution versions of all image assets. Images that are not @2x and @3x will appear blurry on the Retina display."  

> "Always display images at their intended aspect ratio to avoid distortion." - Apple  

I have never ever never(ever) displayed pixelated images. Have you?  
If you have, I pity your users!  

**Tip:** When displaying images on your app, take some time to resize your image and supply it several times to the assets folder so that the device uses the image with its corresponding resolution; trust me, from experience, this will solve many issues!  
Just remember to do the same for your application icons too, especially if its a mobile app!

![alt text](https://devimages-cdn.apple.com/design/tips/images/imagery-high-resolution.png "High Resolution and Distorotion Best Practice")  


## Organization
> "Create an easy-to-read layout that puts controls close to the content they modify." - Apple  

A good developer makes use of the supplied table layouts, grid layouts and various frames that are supplied to them natively.  
Using the table layout (taking the image below as an example) will solve alignment issues, funnily enough! It also frees you up to implement some cool gestures and additional doo-hickies stress free.  
Good luck giving the user those options with everything mashed and mixed and un-ordered.  

Once again, our aim is to deliver a clean interface for the user that has some depth to it. Making use of the appropriate frame elements will greatly aide you in this task. Plus, leveraging the native controls gives the user a clean and natural feel- ultimately helping your app.

#### Don't be a heathen, follow Organization!  

![alt text](https://devimages-cdn.apple.com/design/tips/images/clarity-organization.png "Organization Best Practice")  


# References
Apple's UI Design Tips - <https://developer.apple.com/design/tips/>  
Apple's iOS HCI Design Guide - <https://developer.apple.com/ios/human-interface-guidelines/overview/design-principles/>  

All images have been attributed to Apple's Best Practices Developer Tips. No work is owned on this page.

[iOS Design Themes]: https://developer.apple.com/ios/human-interface-guidelines/overview/design-principles/