//
//  MySingletonViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

import UIKit

class MySingletonViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        MySingletonAnalytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }



}
