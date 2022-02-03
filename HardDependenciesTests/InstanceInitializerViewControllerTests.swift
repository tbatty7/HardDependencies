//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/3/22.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {


    func test_viewDidAppear() throws {
        let viewController = InstanceInitializerViewController(analytics: Analytics())
        viewController.loadViewIfNeeded()
        viewController.viewDidAppear(false)
        
        //Normally, assert something here
    }

}
