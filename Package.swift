// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DemoMudule",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DemoMudule",
            targets: ["Flutter", "App"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DemoMudule"
        ),
        .binaryTarget(
            name: "App",
            path: "App.xcframework"
        ),
         .binaryTarget(
            name: "Flutter",
            path: "Flutter.xcframework"
        )
    ]
)