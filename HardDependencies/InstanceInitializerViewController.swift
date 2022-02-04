//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

import UIKit

class InstanceInitializerViewController: UIViewController {
    
    private let analytics: Analytics
    
    init(analytics: Analytics = Analytics.shared) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }


 
}
