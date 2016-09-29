//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Paul Tangen on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    // no new properties
    
    // Override the climb() method to increase the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should decelerate the plane, should not increase the altitude beyond the maxAltitude, and can only be performed by a jet that is in flight.
    override func climb() {
        if self.inFlight {
            self.decelerate()
            let newAltitude:Double = self.altitude + self.maxAltitude * 0.2
            if newAltitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            } else {
                self.altitude = newAltitude
            }
        }

    }
    
    // Override the dive() method to decrease the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should accelerate the plane, should not decrease the altitude below zero, and can only be performed by a jet that is in flight.
    override func dive() {
        if self.inFlight {
            self.accelerate()
            let newAltitude:Double = self.altitude - self.maxAltitude * 0.2
            if newAltitude < 0 {
                self.altitude = 0
            } else {
                self.altitude = newAltitude
            }
        }
    }
    
    // Write a new method named afterburner() which takes no arguments and provides no return. This method should set the speed to twice the value of the jet's maxSpeed but only if the jet is in flight and already traveling at its maximum speed.
    func afterburner() {
        if inFlight && (self.speed == self.maxSpeed) {
            self.speed = self.maxSpeed * 2
        }
    }
}
