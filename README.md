# LoginScreen

Sample Application to demonstrate how to write Framework Independent Applications with Swift

The slides of the presentation can be found [here](https://speakerdeck.com/tiagomartinho/framework-independent-applications-with-swift)

## Requirements

For the iOS/macOS application:
* OSX 10.11 or higher
* iOS 9.3 or higher
* Xcode 8.0 or higher
* Swift 3.0 toolchain

For the command-line Swift application:
* OSX 10.11 or higher OR Ubuntu 15.10 or 14.04
* Latest Trunk Development Snapshot of Swift 3.0 toolchain (instructions on how to install it can be found [here](https://swift.org/download/))

## Installation

To compile/run the iOS application:
* open the Xcode Workspace Login.xcworkspace
* select the Login iOS scheme
* Run by pressing Play or by pressing [Cmd + R]

To compile/run the Inter iOS application:
* open the Xcode Workspace Login.xcworkspace
* select the InterAppLogin scheme
* Run by pressing Play or by pressing [Cmd + R]

To compile/run the macOS application:
* open the Xcode Workspace Login.xcworkspace
* select the Login macOS scheme
* Run by pressing Play or by pressing [Cmd + R]

To compile the command-line application, in the CrossPlatform directory, do:
```sh
$ swift build
```
To run the command-line application do:
```sh
$ .build/debug/LoginExample username password
```
