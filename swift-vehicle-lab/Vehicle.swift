//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Paul Tangen on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String // an immutable String named name,
    let weight: Double // an immutable Double named weight,
    let maxSpeed: Double // an immutable Double named maxSpeed,
    var speed: Double // a mutable Double named speed, and
    var heading: Double
        // a mutable Double named heading. Top-tip: The heading property is measured in angular degrees, 0 to 360. 
        // Changes to this property should always keep it within this range.
    
    func cleanHeading(origHeading:Double) -> Double {
        if origHeading < 0 {
            return origHeading + 360
        } else if origHeading > 360 {
            return origHeading - 360
        } else {
            return origHeading
        }
    }
    
    init(name:String, weight:Double, maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0
        self.heading = 0
    }
    
    // goFast() which sets the vehicle's speed equal to its maxSpeed.
    func goFast(){
        self.speed = self.maxSpeed
    }
    
    // the tests look for methods named: gofast() and goFast()
    func gofast(){
        self.speed = self.maxSpeed
    }
    
    // halt() which sets the vehicle's speed to zero.
    func halt(){
        self.speed = 0
    }
    
    // accelerate() which increases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not increase the speed beyond the maxSpeed.
    func accelerate(){
        let newSpeed = self.speed + (self.maxSpeed * 0.1)
        if newSpeed > self.maxSpeed {
            self.speed = self.maxSpeed
        } else {
            self.speed = newSpeed
        }
    }
    
    // decelerate() which decreases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not decrease the speed below zero.
    func decelerate(){
        let newSpeed = self.speed - (self.maxSpeed * 0.1)
        if newSpeed < 0 {
            self.speed = 0
        } else {
            self.speed = newSpeed
        }
    }
    
    // turnRight() which increases the heading by 90 angular degrees and cuts the speed in half (the physics of turning has a momentum cost). This method should have no effect on a stationary vehicle (a vehicle can only turn if it is moving).
    // Top-tip: Remember to keep the heading's value between 0 and 360.
    func turnRight(){
        if self.speed > 0 {
            let newHeading = self.heading + 90
            self.heading = cleanHeading(origHeading: newHeading)
            self.speed = self.speed / 2
        }
    }
    
    // turnLeft() which has the effect of decreasing the heading by 90 angular degrees. Similarly, this should cut the speed in half and should have no effect on a stationary vehicle.
    // Top-tip: The modulus operator won't perform the math that you want if you simply feed it -90. You're going to have to help it figure out how to simulate a left turn. 
    // WHAT DOES THIS MEAN?? Error handling is done in the setter.
    
    func turnLeft(){
        if self.speed > 0 {
            let newHeading = self.heading - 90
            self.heading = cleanHeading(origHeading: newHeading)
            self.speed = self.speed / 2
        }
    }
    
}
