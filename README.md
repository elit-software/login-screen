# LoginScreen

Sample Application to demonstrate how to write Framework Independent Applications with Swift

The presentation of the concept can be found [here](https://www.youtube.com/watch?v=Bk1qHEUren4)

The slides of the presentation can be found [here](https://bit.ly/1VLU907)

## Requirements

For the iOS/macOS application:
* OSX 10.10.5 or higher
* Xcode 7.3 or higher (download it from app store)

For the command-line Swift application:
* OSX 10.10.5 or higher OR Ubuntu 15.10 or 14.04
* Latest Trunk Development Snapshot of Swift (instructions on how to install it can be found [here](https://swift.org/download/))

## Installation

To compile/run the iOS application open the Xcode Workspace Login.xcworkspace and after selecting the Login iOS scheme do Cmd + R.

To compile/run the macOS application open the Xcode Workspace Login.xcworkspace and after selecting the Login macOS scheme do Cmd + R.

To compile the command-line application, in the CrossPlatform directory, do:
```sh
$ swift build
```
To run the command-line application do:
```sh
$ .build/debug/LoginExample username password
```
