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
            url: "https://flutter-beta.web.app/1.0.2/App.xcframework.zip",
            checksum: "f1009567de6928f6f1e1c476bd71412195898a91b721cd19e13348c5bbc5e832"
        ),
         .binaryTarget(
            name: "Flutter",
            url: "https://flutter-beta.web.app/1.0.2/Flutter.xcframework.zip",
            checksum: "b8e102c348e2e53165e9244cafe7148a823f3a124a3f2cfb31acb9ec914f9260"
        )
    ]
)
