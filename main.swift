//
//  Energy.swift
//
//  Created by Ahmad El-khawaldeh
//  Created on 2021-20-11
//  Version 1.0
//  Copyright (c) 2020 MTHS. All rights reserved          
//                         
//  This program calculates the amount of energy
//

import Foundation

// https://stackoverflow.com/questions/60788627/custom-errormessage-on-enum-field-upon-failed-validation-in-spring
enum CustomError: Error {
    case InputNil
 }

let speed: Float = 20
let MAXLOAD: Float = 1100
let POW1: Float = 2
let POW2: Float = 10
let POW3: Float = 8
let POW4: Float = 2.998

print("Enter the mass of an object in Kg:")

do {
    let mass = readLine()
    guard let massFloat = Float(mass!)
    else {
        throw CustomError.InputNil
    }
    let lightSpeed = (POW4 * pow(POW2, POW3))
    let energy = pow(lightSpeed, POW1)*(massFloat)
    print("If \(mass ?? "00") kg of mass was converted to energy , it would produce \(energy) J")
}   
catch {
    print("ERROR NUMBBER NOT VALID TRY AGAIN")
    print("\nDone")
}