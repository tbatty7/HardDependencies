//
//  ClosurePropertyViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

import UIKit

class ClosurePropertyViewController: UIViewController {

    var makeAnalytics: () -> Analytics = { Analytics.shared } // <-- property with a closure, no need to make it lazy because a closure won't execute until it is called.
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }


}
