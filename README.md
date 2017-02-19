Logging
========

An standard interface for message logging.

Working on various projects and frameworks you may need to use a separation betwen logic that generates messages and the logic that reports them. Logging provides a standard interface which could be easily extended or subclassed by any already existing logger.

Each message could provide file name, function name, line number and assigned a severity. The list of severities is inspired by [RFC 5424](https://tools.ietf.org/html/rfc5424).

## Requirements
- iOS 9.0+ / Mac OS X 10.10+ / watchOS 2.0+ / tvOS 9.0+
- Swift 2.2 or 2.3
  - Xcode 7.0+
- Swift 3
  - Xcode 8.0+
- Carthage 0.18+ (if you use)
- CocoaPods 1.1.1+ (if you use)

## Installation

### Carthage
Installation using [Carthage](https://github.com/Carthage/Carthage) requires deployment target of iOS 8.0 or newer.
Add the following line to your `Cartfile`:

#### Swift 2.2 or 2.3

```
github "martinbanas/logging" ~> 1.0.0
```

#### Swift 3.0.x

```
github "martinbanas/logging" "2.0.0"
```

Make sure to setup the `carthage copy-frameworks` `Run Script` build phase for Carthage dependencies in your project.

### CocoaPods
Not supported

## License

MIT license. See the [LICENSE file](LICENSE.txt) for details.