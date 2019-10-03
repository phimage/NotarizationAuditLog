// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizationAuditLog",
    products: [
        .library(
            name: "NotarizationAuditLog",
            targets: ["NotarizationAuditLog"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NotarizationAuditLog",
            dependencies: []),
        .testTarget(
            name: "NotarizationAuditLogTests",
            dependencies: ["NotarizationAuditLog"]),
    ]
)
