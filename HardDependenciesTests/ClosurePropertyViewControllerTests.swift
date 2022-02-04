//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/4/22.
//

@testable import HardDependencies
import XCTest

class ClosurePropertyViewControllerTests: XCTestCase {

    func testExample() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        viewController
    }
}
