# Bring your app to the big screen

## Swift Summit, October 2015

### Boris Bügling - @NeoNacho

![20%, original, inline](images/contentful.png)

![](images/tv-01.gif)

<!--- use Poster theme, black -->

---

![inline](images/nacho-tweet.png)

---

## CocoaPods

![](images/cocoapods.jpg)

---

## Contentful

![](images/contentful-bg.png)

---

![100%](images/coloring-books.jpg)

---

![inline](images/devkit.jpg)

![](images/orig_TV29.jpg)

---

> “‘I’d like to create an integrated television set that is completely easy to use,’ he told me. [...] ‘It will have the simplest user interface you could imagine. I finally cracked it.’”

---

## October 21, 2011

![](images/orig_TV29.jpg)

---

## September 9, 2015

![](images/orig_TV29.jpg)

---

![210%](images/the-future-of-tv.png)

---

![](images/apple-tv-future.jpg)

---

![inline](images/api-diffs.png)

The future of TV is iOS

![](images/orig_TV29.jpg)

---

Accelerate
AudioToolbox
AudioUnit
AVFoundation
AVKit
CFNetwork
CloudKit
CoreBluetooth
CoreData
CoreFoundation
CoreGraphics

![](images/orig_TV29.jpg)

---

CoreImage
CoreLocation
CoreMedia
CoreSpotlight
CoreText
CoreVideo
Darwin
Foundation
GameController
GameKit
GameplayKit

![](images/orig_TV29.jpg)

---

GLKit
ImageIO
MachO
MediaAccessibility
MediaPlayer
MediaToolbox
Metal
MetalKit
MetalPerformanceShaders
MobileCoreServices

![](images/orig_TV29.jpg)

---

ModelIO
OpenGLES
SceneKit
Security
simd
SpriteKit
StoreKit
Swift Standard Library
SystemConfiguration
UIKit

![](images/orig_TV29.jpg)

---

# WebKit

![](images/orig_TV29.jpg)

---

# MultipeerConnectivity

![](images/orig_TV29.jpg)

---

# Porting existing apps

![](images/shark-tv.jpg)

---

# CocoaPods

- Supports tvOS since 0.39.0
- New platform:

```ruby
platform :tvos, '9.0'
```

![](images/orig_TV29.jpg)

---

# Pods supporting tvOS

```json
["AFNetworking","Alamofire","CocoaLumberjack","SwiftyJSON","Charts",
"Quick","Bolts","SnapKit","RxBlocking","RxCocoa","RxSwift","Nimble",
"Argo","UICKeyChainStore","AsyncSwift","DTFoundation","Sync",
"KeychainAccess","upnpx","AlamofireImage"]
```

If you are adventurous 👇

<https://github.com/orta/cocoapods-expert-difficulty>

---

# SpriteKit Example

![inline](images/spritekit-demo-2.png)

![](images/orig_TV29.jpg)

---

# DOOM Classic

- UIKit changes (UIAlertView, UISlider)
- AudioSession isn't available
- Newer C++ compiler

![](images/doom.jpg)

---

# NIBs 😭

![inline](images/ios-nibs.png)

If you feel like copy-pasting stuff between NIBs 👇

<https://github.com/neonichu/DOOM-IOS2/tree/tvos>

---

# Storage limitations

- app is limited to 200 MB
- 500 KB of persistent storage (`NSUserDefaults`)
- Use iCloud
- Use On-Demand resources

---

# No direct manipulation

![](images/siri-remote.png)

---

# Focus engine

```swift
UIButton().canBecomeFocused() // == true or false
UIButton().focused // == true or false
UIScreen.mainScreen().focusedView // nil or the view in focus
```

---

# Reacting to focus changes

```swift
func didUpdateFocusInContext(context: UIFocusUpdateContext,
	withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)

context.nextFocusedView // the view which gets the focus
context.previouslyFocusedView // the view which had the focus

func addCoordinatedAnimations(_ animations: (() -> Void)?,
                   completion completion: (() -> Void)?)
```

---

# Demo

![](images/static.jpg)

---

# Siri?

![inline](images/no-siri-api.png)

![](images/static.jpg)

---

# Game Controllers

![100%](images/tumblr_mjv57cS2LJ1s5jjtzo1_500.gif)

---

![inline](images/game-controllers.png)

---

```swift
NSNotificationCenter.defaultCenter().addObserverForName(GCControllerDidConnectNotification,
		object: nil, queue: nil) { (note) in
	if let controller = note.object as? GCController {
    	if let microPad = controller.microGamepad {
        	microPad.dpad.valueChangedHandler = { (_, x, y) in
        		if let paddle = self.childNodeWithName("Paddle") {
        			paddle.position.y += CGFloat(y)
                }
            }
        }
    }
}
```

---

# Game Controllers work with UIKit components

![inline](images/input-destination.png)

---

# Siri remote is also a game controller

- Profile `GCMicroGamepad`
- Touch surface is a dpad
- Two action buttons
- Motion (`GCMotion`)
- Seems not to work in the simulator

---

> 2.27 If your app’s core functionality doesn’t work with the Siri remote it will be rejected. The app may, however, provide enhanced functionality in connection with a game controller or other peripheral

---

> A maximum of two game controllers (plus one remote) can be connected to an Apple TV at any given time.

---

# Demo

![](images/spritekit-demo.png)

---

# TVML

![](images/tumblr_static_old-school-tv.gif)

---

# App Review 😭

![inline](images/app-review.png)

---

# Conclusion

- tvOS works very well
- If you know UIKit, it's easy to start
- Think about interaction

![inline](images/popular-new-bugs.png)

---

# Resources

- <https://developer.apple.com/tvos/human-interface-guidelines/>
- "Ich glotz TV", @avbelow, Macoun 2015
- <https://github.com/contentful/tvful>
- <http://nerds.airbnb.com/tvos-focus-engine/>
- <https://eternalstorms.wordpress.com/2015/10/05/pair-the-apple-tv-developer-kit-siri-remote-with-xcodes-simulator/>

---

# Thanks!

![](images/Phillips_PM5544.gif)

---

@NeoNacho

boris@contentful.com

http://buegling.com/talks

![20%, original, inline](images/contentful.png)
