//
//  Alarm.swift
//  Alarm35BenBrandau
//
//  Created by Ben Brandau Brandau on 7/27/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation

class Alarm  {
    var fireDate: Date
    var name: String
    var enabled: Bool
    var uuid: String
    var fireTimeAsString: String {
        return fireDate.formatAsString()
    }
    
    init (fireDate: Date, name: String, enabled:Bool, uuid : String = UUID().uuidString){
        self.fireDate = fireDate
        self.name = name
        self.enabled = enabled
        self.uuid = uuid
    }
    
}

extension Alarm : Equatable {
    static func == (lhs: Alarm, rhs: Alarm) -> Bool {
        lhs.fireDate == rhs.fireDate &&
        lhs.name == rhs.name &&
        lhs.enabled == rhs.enabled &&
        lhs.uuid == rhs.uuid

    }
        
}

