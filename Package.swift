// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
        name: "leetcode",
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(
                    name: "two_sums",
                    dependencies: []),
            .target(
                    name: "add_two_numbers",
                    dependencies: []),
            .target(
                    name: "longest_substring_without_repeating",
                    dependencies: []),
            .target(
                    name: "reverse_integer",
                    dependencies: []),
            .target(
                    name: "zigzag_conversion",
                    dependencies: []),
            .target(
                    name: "palindrome_number",
                    dependencies: []),
            .target(
                    name: "roman_to_integer",
                    dependencies: []),
            .target(
                    name: "median_of_sorted_arrays",
                    dependencies: []),
        ]
)
