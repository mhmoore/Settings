//
//  SettingTableViewCell.swift
//  SettingsPractice
//
//  Created by Michael Moore on 8/5/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool)
}


class SettingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Properties
    
    weak var delegate: SettingTableViewCellDelegate?
    
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    // MARK - Custom Methods
    
    func updateViews() {
        if let setting = setting {
            iconImageView.image = setting.icon
            nameLabel.text = setting.name
            settingSwitch.isOn = setting.isOn
            
            backgroundColor = setting.isOn ? .lightGray : .white
        } else {
            
        }
    }
    
    // MARK: - Actions
    @IBAction func settingSwitchValuedChanged(_ sender: Any) {
        delegate?.cellSettingSwitchValueChanged(cell: self, isOn: settingSwitch.isOn)
    }
}
