# WSBouncingTableView

[![CI Status](http://img.shields.io/travis/WeiSheng Su/WSBouncingTableView.svg?style=flat)](https://travis-ci.org/WeiSheng Su/WSBouncingTableView)
[![Version](https://img.shields.io/cocoapods/v/WSBouncingTableView.svg?style=flat)](http://cocoapods.org/pods/WSBouncingTableView)
[![License](https://img.shields.io/cocoapods/l/WSBouncingTableView.svg?style=flat)](http://cocoapods.org/pods/WSBouncingTableView)
[![Platform](https://img.shields.io/cocoapods/p/WSBouncingTableView.svg?style=flat)](http://cocoapods.org/pods/WSBouncingTableView)

## Overview

A custom UITableView with bouncing properties to achieve ripples effects.

![](WSBouncingTableViewDemo.gif?raw=true "WSBouncingTableView in action")

## Usage


Add the <tt>WSBouncingTableView</tt> to your <tt>UIViewController</tt>, adjust two properties <tt>stretchDistanceFactor</tt> and <tt>bouncingDuration</tt> 
To have a full screen <tt>ARNRouletteWheelView</tt>:
```  objective-c
WSBouncingTableView *tableView = [[WSBouncingTableView alloc] initWithFrame:self.view.bounds];

tableView.bouncingDuration = 0.3f;
tableView.stretchDistanceFactor = 1.0f;

```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.



## Requirements

## Installation

WSBouncingTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WSBouncingTableView"
```

## Author

WeiSheng Su, ted7726@gmail.com

## License

WSBouncingTableView is available under the MIT license. See the LICENSE file for more info.
