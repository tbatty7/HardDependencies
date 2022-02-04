//
//  OverrideViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

import UIKit

class OverrideViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics().track(event: "viewDidAppear - \(type(of: self))")
    }
    
    func analytics() -> Analytics {
        return Analytics.shared
    }

}
