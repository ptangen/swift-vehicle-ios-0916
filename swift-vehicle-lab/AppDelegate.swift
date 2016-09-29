//
//  AppDelegate.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("")
        let skateboard = Vehicle(name: "skateboard", weight: 7.5, maxSpeed: 20.0)
        print("skateboard speed: \(skateboard.speed)")
        skateboard.gofast()
        print("skateboard speed: \(skateboard.speed)")
        print("")
        let cessna172 = Plane(name: "Cessna 172", weight: 2550, maxSpeed: 188, maxAltitude: 13500)
        print("cessna172 altitude before takeoff: \(cessna172.altitude)")
        cessna172.takeOff()
        print("cessna172 altitude after takeoff: \(cessna172.altitude)")
        print("")
    
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
