// This course describes Swift 5.6, the default version of Swift that's included in Xcode 13.

// You can use Xcode 13 to build targets (applications) that are written in either Swift 5.6, Swift 4.2, or Swift 4.

/* When you use Xcode 13 to build Swift 4 and Swift 4.2 code, most Swift 5.6 functionality is available. 
That said, the following changes are available only to code that uses Swift 5.6 or later. */

// Concurrency requires Swift 5.6 or later, and a version of the Swift standard library that provides the corresponding concurrency types.

// On Apple platforms, set a deployment target of at least iOS 15, macOS 12, tvOS 15, or watchOS 8.0. 

/* A target(part of a project or an application) written in Swift 5.6 can depend on a target that’s written in Swift 4.2 or Swift 4, and vice versa. 
This means, if you have a large project that’s divided into multiple frameworks, you can migrate your code from Swift 4 to Swift 5.6 one framework at a time. */