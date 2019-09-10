//
//  InterfaceController.swift
//  HeartrateTracker WatchKit Extension
//
//  Created by dinesh danda on 9/9/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    let healthKitManger = HealthKitManager.sharedInstance
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        healthKitManger.authorizeHealthKit {(success, error) in
            print("Was healthkit successful? \(success)")
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
