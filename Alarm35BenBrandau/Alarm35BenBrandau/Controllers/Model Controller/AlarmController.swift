//
//  AlarmController.swift
//  Alarm35BenBrandau
//
//  Created by Ben Brandau Brandau on 7/27/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation

class AlarmController {
    static let shared = AlarmController()
    var alarms : [Alarm] = []

//Mock data
    var mockAlarms : [Alarm]  {
        let date1 = Date(timeInterval: 5000, since: Date())
        let date2 = Date(timeInterval: 4000, since: Date())
        let date3 = Date(timeInterval: 3000, since: Date())
        
        let wake = Alarm(fireDate: date1, name: "wake", enabled: false )
        let lunch = Alarm(fireDate: date2, name: "lunch", enabled: false )
        let sleep = Alarm(fireDate: date3, name: "sleep", enabled: false )
   
        return [wake,lunch,sleep]
    }

    
    func addAlarms(fireDate: Date, name: String,enabled:Bool){
        let newAlarm = Alarm(fireDate: fireDate, name: name, enabled: enabled)
        alarms.append(newAlarm)
    }
    
    func update (alarm: Alarm,fireDate: Date, name:String, enabled:Bool){
        alarm.enabled = enabled
        alarm.fireDate = fireDate
        alarm.name = name
        alarm.enabled = enabled
        
    }

    func delete(alarm:Alarm){
        guard let index = alarms.firstIndex(of: alarm) else {return}
        alarms.remove(at: index)
        
        
    }
}// end of AlarmController class
