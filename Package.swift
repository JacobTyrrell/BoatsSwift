// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var dependencies: [Package.Dependency] = [
	.package(url: "https://github.com/Azoy/Sword.git", .branch("master"))
]

var targetDeps: [Target.Dependency] = ["Sword"]

let package = Package(
	name: "Boats.swift",
	products: [
		.library(name: "Boats.swift", targets: ["Boats.swift"])
	],
	dependencies: dependencies,
	targets: [
		.target(
			name: "Boats.swift",
			dependencies: targetDeps
		)
	]
)
