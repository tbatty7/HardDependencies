//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/3/22.
//

@testable import HardDependencies
import XCTest

class InstancePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        viewController.analytics = Analytics()
        viewController.loadViewIfNeeded()
        viewController.viewDidAppear(false)
        
        // Normally you would assert something
        
    }

}
