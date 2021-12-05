// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PfyMcSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PfyMcSDK",
            targets: ["PrivafyConnectSDK"]),
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
	.target(
	    name: "PrivafyConnectSDK",
	    dependencies: [
                .package( url: "https://github.com/datatheorem/TrustKit", .exact("2.0.0"))
                .target(name: "PfyMcSDK")    
            ],
	),
        .binaryTarget(
            name: "PfyMcSDK",
            //url: "https://cirrus-deb-repo.s3.amazonaws.com/aesdk/0.1.3/PfyMcSDK.xcframework.zip",
            //checksum: "40f836d18195c98ff499a5f81e8e4c861bc182a675f1a5d0e4ac64729c49846e"
            url: "https://cirrus-deb-repo.s3.amazonaws.com/aesdk/0.1.6/PfyMcSDK.xcframework.zip",
	    checksum: "141990d070b95c3887e6824a5503a164baffd5a831381aa61f22b2e1f84a67f7"
            //url: "https://cirrus-deb-repo.s3.amazonaws.com/aesdk/0.1.2/PfyMcSDK.xcframework.zip",
            //checksum: "69188f398fcf4a827e404291a37a479647cd6b50ae90945f66fb53d919df2410"
        )
	
        
    ]
)
