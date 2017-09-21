[![Travis CI](https://travis-ci.org/martinbanas/logging.svg?branch=master)](https://travis-ci.org/martinbanas/logging)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![pod compatible](https://img.shields.io/badge/pod-compatible-4BC51D.svg?style=flat)](https://cocoapods.org)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://github.com/martinbanas/logging)
[![Platforms](https://img.shields.io/badge/platform-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-lightgrey.svg)](https://github.com/martinbanas/logging)
[![Swift Version](https://img.shields.io/badge/Swift-3.x-F16D39.svg?style=flat)](https://developer.apple.com/swift)

Logging
========

A standard interface for message logging.

Working on various projects and frameworks you may need to use a separation betwen logic that generates messages and the logic that reports them. Logging provides a standard interface which could be easily extended or subclassed by any already existing logger.

Each message could provide file name, function name, line number and assigned a severity. The list of severities is inspired by [RFC 5424](https://tools.ietf.org/html/rfc5424).

## Requirements
- iOS 9.0+ / Mac OS X 10.10+ / watchOS 2.0+ / tvOS 9.0+
- Swift 3
  - Xcode 8.0+
- Carthage 0.18+ (if you use)
- CocoaPods 1.1.1+ (if you use)

## Installation

### Carthage
Installation using [Carthage](https://github.com/Carthage/Carthage) requires deployment target of iOS 8.0 or newer.
Add the following line to your `Cartfile`:

#### Swift 3.x

```
github "martinbanas/logging" ~> "3.0.0"
```

Make sure to setup the `carthage copy-frameworks` `Run Script` build phase for Carthage dependencies in your project.

### CocoaPods
To install logging with CocoaPods, add the following lines to your Podfile.

#### Swift 3.0.x

```
platform :ios, '9.0' # or platform :tvos, or platform :osx, or platform :watchos
use_frameworks!

pod 'Logging', :git => 'https://github.com/martinbanas/logging.git', :tag => '3.0.0'
```

## License

MIT license. See the [LICENSE file](LICENSE.txt) for details.