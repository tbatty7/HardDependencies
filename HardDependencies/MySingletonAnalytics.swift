//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.shared {
            print(">>>>> ...Not MySingletonAnalytics singleton")
        }
    }
}
