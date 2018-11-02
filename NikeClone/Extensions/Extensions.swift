//
//  Extensions.swift
//  NikeClone
//
//  Created by Nathan Tugwell on 02/11/2018.
//  Copyright © 2018 petsathome. All rights reserved.
//

import Foundation

extension Double {
    func metersToMiles(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return ((self / 1609.34) * divisor).rounded() / divisor
    }
}
