//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/4/22.
//

import UIKit

class InstancePropertyViewController: UIViewController {

    lazy var analytics = Analytics.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
}
