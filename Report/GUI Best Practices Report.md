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

## Text Size
> "Text should be at least 11 points so it's legible at a typical viewing distance without zooming." - Apple

## Contrast
> "Make sure there is ample contrast between the font color and the background so text is legible." - Apple


## Spacing
> "Don't let text overlap. Improve legibility by increasing line height or letter spacing." - Apple

## High Resolutiong and Distortion
> "Provide high-resolution versions of all image assets. Images that are not @2x and @3x will appear blurry on the Retina display."
> "Always display images at their intended aspect ratio to avoid distortion." - Apple

## Organization
> "Create an easy-to-read layout that puts controls close to the content they modify." - Apple



### References
Apple's UI Design Tips - <https://developer.apple.com/design/tips/>  
Apple's iOS HCI Design Guide - <https://developer.apple.com/ios/human-interface-guidelines/overview/design-principles/>

[iOS Design Themes]: https://developer.apple.com/ios/human-interface-guidelines/overview/design-principles/