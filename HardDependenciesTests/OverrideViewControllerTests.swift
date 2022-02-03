//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/3/22.
//

import XCTest
@testable import HardDependencies

class OverrideViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let viewController = TestableOverrideViewController()
        viewController.loadViewIfNeeded()
        viewController.viewDidAppear(false)
        // Normally, assert something 
    }

    private class TestableOverrideViewController: OverrideViewController {
        override func analytics() -> Analytics { Analytics() }
    }

}
