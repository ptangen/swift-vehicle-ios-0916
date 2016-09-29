//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Paul Tangen on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    var maxAltitude: Double         // an immutable Double named maxAltitude,
    var altitude: Double = 0        // a mutable Double named altitude, and
    var inFlight: Bool {            // a calculated Bool named inFlight.
        if altitude > 0 && self.speed > 0 {
            return true
        } else {
            return false
        }
    }
    
    // Write a designated initializer that takes four arguments, three for the superclass's properties and one for maxAltitude.
    init(name:String, weight:Double, maxSpeed:Double, maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        super.init(name:name, weight:weight, maxSpeed:maxSpeed)
    }
    
    // takeOff() which only affects a plane that is not in flight. This method should set the speed and altitude properties to one tenth (1/10th) of their maximums.
    func takeoff() {
        if !self.inFlight {
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    // the test is looking for takeOff() and takeoff() :)
    func takeOff() {
        if !self.inFlight {
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    // land() which sets the speed and altitude properties to zero.
    func land() {
        if self.inFlight {
            self.speed = 0
            self.altitude = 0
        }
    }
    
    // climb() which increases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to decelerate. This method should not increase the altitude beyond the maxAltitude and can only be performed when the plane is in flight.
    func climb() {
        if self.inFlight {
            self.decelerate()
            let newAltitude:Double = self.altitude + (self.maxAltitude * 0.1)
            if newAltitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            } else {
                self.altitude = newAltitude
            }
        }
    }
    
    // dive() which decreases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to accelerate. This method should not decrease the altitude below zero and can only be performed if the plane is not already on the ground. However, if the plane's speed is zero, it is still in the air but has "stalled" and is still able to perform a dive in order to convert altitude into speed.
    func dive() {
        if self.altitude > 0 {
            self.accelerate()
            let newAltitude:Double = self.altitude - (self.maxAltitude * 0.1)
            if newAltitude < 0 {
                self.altitude = 0
            } else {
                self.altitude = newAltitude
            }
        }
    }
    
    // bankRight() which increases the heading by 45 angular degrees but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane that is in flight.
    func bankRight(){
        if self.inFlight {
            let newHeading = self.heading + 45
            self.heading = cleanHeading(origHeading: newHeading)
            self.speed = self.speed - self.speed * 0.1
        }
    }
    
    // bankLeft() which has the effect of decreasing the heading by 45 angular degrees, but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane this is in flight.
    func bankLeft(){
        if self.inFlight {
            let newHeading = self.heading - 45
            self.heading = cleanHeading(origHeading: newHeading)
            self.speed = self.speed - self.speed * 0.1
        }
    }
}
