// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DemoModule",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DemoModule",
            targets: ["Flutter", "App"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DemoModule"
        ),
        .binaryTarget(
            name: "App",
            url: "https://flutter-beta.web.app/1.0.2/App.xcframework.zip",
            checksum: "57ecc904e542d0da3e81a912ca6e447d76df049a8a58e0d445c4259ab18e8252"
        ),
         .binaryTarget(
            name: "Flutter",
            url: "https://flutter-beta.web.app/1.0.2/Flutter.xcframework.zip",
            checksum: "56c6dacb1036ea4aa7205b25479a7d1792b2250bbf5028d9405f90dab7cc7664"
        )
    ]
)
