//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Timothy D Batty on 2/3/22.
//

class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif
    
    static var shared: MySingletonAnalytics {// This is a computed property
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        
        return instance
    }
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.instance {
            print(">>>>> ...Not MySingletonAnalytics singleton")
        }
    }
}
