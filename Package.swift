// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PfyMcSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PfyMcSDK",
            targets: ["PfyMcSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
	.package( url: "https://github.com/datatheorem/TrustKit",
	.exact("2.0.0")
	)
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "PfyMcSDK",
            url: "https://cirrus-deb-repo.s3.amazonaws.com/aesdk/0.1.1/PfyMcSDK.xcframework.zip",
            checksum: "38d072ea19f73180ea3c756b589bc128c3cf858d884d1383e6e5ca484140a52e"
        )
        
    ]
)
