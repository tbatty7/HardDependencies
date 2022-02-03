//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Timothy D Batty on 2/3/22.
//

@testable import HardDependencies
import XCTest

class MySingletonViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewDidAppear() {
        let viewController = MySingletonViewController()
        viewController.loadViewIfNeeded()
        viewController.viewDidAppear(false)
    }
}
