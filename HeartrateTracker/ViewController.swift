//
//  ViewController.swift
//  HeartrateTracker
//
//  Created by dinesh danda on 9/9/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import UIKit
import HealthKit
class ViewController: UIViewController {

    let healthKitManager = HealthKitManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        healthKitManager.authorizeHealthKit {(success, error) in
            print("Was healthkit successful? \(success)")
        }
        
    }


}

