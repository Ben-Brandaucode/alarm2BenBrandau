//
//  SwitchTableViewCell.swift
//  Alarm35BenBrandau
//
//  Created by Ben Brandau Brandau on 7/27/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import UIKit
protocol  SwitchTableViewCellDelegate : class{
    func switchCellValueChanged(cell: SwitchTableViewCell)
    
}

class SwitchTableViewCell: UITableViewCell {

//Outlets
    @IBOutlet weak var alarmName: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var alarmswitch: UISwitch!
    
// Properties
    weak var delegate : SwitchTableViewCellDelegate?
    var alarm: Alarm? {
        didSet{
            updateViews()
        }
    }
// Actions
    @IBAction func alarmswitchTapped(_ sender: Any) {
        guard let delegate = delegate else {return}
        delegate.switchCellValueChanged(cell: self)
    }
    
    func updateViews(){
        guard let alarm = alarm else {return}
        alarmName.text = alarm.name
        timeLabel.text = alarm.fireTimeAsString
        alarmswitch.isOn = alarm.enabled
    }
}
