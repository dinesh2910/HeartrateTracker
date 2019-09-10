//
//  HealthKitManager.swift
//  HeartrateTracker WatchKit Extension
//
//  Created by dinesh danda on 9/9/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import Foundation
import HealthKit

class HealthKitManager: NSObject {
    
    static let sharedInstance = HealthKitManager()
    private override init() {}
    
    let healthStore = HKHealthStore()
    
    func authorizeHealthKit(_ completion: @escaping ((_ success: Bool, _ error: Error?) -> Void)) {
        
        guard let heartRateType: HKQuantityType = HKQuantityType.quantityType(forIdentifier: .heartRate) else {
            return
        }
        let typesToShare = Set([HKObjectType.workoutType()])
        let typesToRead = Set([HKObjectType.workoutType()])
        
        healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead, completion: {(success, error) in
            
            print("Was the authorization successful? \(success)")
            completion (success, error)
        })
    }
}
