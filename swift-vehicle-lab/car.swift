//
//  car.swift
//  swift-vehicle-lab
//
//  Created by Paul Tangen on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car : Vehicle {
    var transmission:String     // an immutable String named transmission,
    var cylinders:Int           // an immutable Int named cylinders, and
    var milesPerGallon:Double   // an immutable Double named milesPerGallon.
    
    // Write a designated initializer that takes six arguments total, the three arguments for the superclass's initializer (name, weight, and maxSpeed), and three arguments for these new properties (transmission, cylinders, and milesPerGallon). The initializer should set all three new properties to their associated arguments, and call the superclass's initializer, passing it the correct arguments that it requires.
    init(name:String, weight:Double, maxSpeed:Double, transmission:String, cylinders:Int, milesPerGallon:Double) {
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name:name, weight:weight, maxSpeed:maxSpeed)
    }
    
    // Write a new method named drive() which takes no arguments and provides no return. This method should simply call the accelerate() method inherited from the superclass.
    func drive() {
        super.accelerate()
    }
    
    // Write a new method named brake() which take no arguments and provides no return. This method should simply call the decelerate() method inherited from the superclass.
    func brake() {
        decelerate()
    }

}
