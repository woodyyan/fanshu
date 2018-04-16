//
//  PersonalTableviewCell.swift
//  Fanshu
//
//  Created by Tao Xue on 11/04/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

class PersonalTableviewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var numberLabel: UILabel!

    @IBOutlet weak var nightModeSwitchControl: UISwitch!

    func initCell(personalData: PersonalData) {
        titleLabel.text = personalData.title
        numberLabel.text = (personalData.number != nil) ? String(personalData.number!) : ""
        nightModeSwitchControl.isHidden = !personalData.nightMode
    }
}
