//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/4/22.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() throws {
        let viewController = ClosureInitializerViewController{Analytics()}
        viewController.loadViewIfNeeded()
        viewController.viewDidAppear(false)
        
        // Usually, you would assert somethihg
    }

}
