// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
  name: "CoreXLSX",
  platforms: [
    .macOS(.v10_11),
    .iOS(.v9),
    .tvOS(.v9),
    .watchOS(.v2),
  ],
  products: [
    // Products define the executables and libraries produced by a package,
    // and make them visible to other packages.
    .library(
      name: "CoreXLSX",
      targets: ["CoreXLSX"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/CoreOffice/XMLCoder.git", from: "0.13.1"),
    .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.14"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define
    // a module or a test suite.
    // Targets can depend on other targets in this package, and on products in
    // packages which this package depends on.
    .target(
      name: "CoreXLSX",
      dependencies: ["XMLCoder", "ZIPFoundation"]
    ),
    .testTarget(
      name: "CoreXLSXTests",
      dependencies: ["CoreXLSX"]
    ),
  ]
)
