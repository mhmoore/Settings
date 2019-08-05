//
//  Setting.swift
//  SettingsPractice
//
//  Created by Michael Moore on 8/5/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

import UIKit

class Setting {
    
    let name: String
    let isOn: Bool
    let icon: UIImage
    
    
    init(name: String, isOn: Bool = false, icon: UIImage) {
        
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
    
}
