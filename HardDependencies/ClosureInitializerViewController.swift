//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }


}
