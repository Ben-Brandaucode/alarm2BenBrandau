//
//  DateExtension.swift
//  Alarm35BenBrandau
//
//  Created by Ben Brandau Brandau on 7/27/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation

extension Date {
    
    func formatAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter.string(from: self)
        
    }
}
