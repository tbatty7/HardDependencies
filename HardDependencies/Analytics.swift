//
//  Analytics.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

class Analytics {
    
    // Pretend external library / difficult dependency
    
    static let shared = Analytics()
    
    func track(event: String) {
        print(">>>>> " + event)
        
        if self !== Analytics.shared {
            print(">>>>>> ...Not the Analytics singleton")
        }
    }
}
