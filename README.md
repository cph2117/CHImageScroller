# CHImageScroller

[![CI Status](http://img.shields.io/travis/Connor Hailey/CHImageScroller.svg?style=flat)](https://travis-ci.org/Connor Hailey/CHImageScroller)
[![Version](https://img.shields.io/cocoapods/v/CHImageScroller.svg?style=flat)](http://cocoapods.org/pods/CHImageScroller)
[![License](https://img.shields.io/cocoapods/l/CHImageScroller.svg?style=flat)](http://cocoapods.org/pods/CHImageScroller)
[![Platform](https://img.shields.io/cocoapods/p/CHImageScroller.svg?style=flat)](http://cocoapods.org/pods/CHImageScroller)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

CHImageScroller requires only 4 lines of code to implement:

The first line should be an array of images that you want presented
1) let images = NSArray(objects: UIImage(named: "barca")!, UIImage(named: "bayern")!, UIImage(named: "united")!)

The second line initializes the scroller with the array of images and the desired frame (should be full screen)
2) let imageScroller = CHImageScroller(images: images, frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))

In the third, you add the imageScroller as a subview of your current view controller's view'
3) self.view.addSubview(imageScroller)

In the fourth, you present the imageScroller
4) imageScroller.presentImagePreview()

## Requirements

## Installation

CHImageScroller is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CHImageScroller"
```

## Author

Connor Hailey, connorhailey@gmail.com

## License

CHImageScroller is available under the MIT license. See the LICENSE file for more info.
