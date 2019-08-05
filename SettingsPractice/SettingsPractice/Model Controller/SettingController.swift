//
//  SettingController.swift
//  SettingsPractice
//
//  Created by Michael Moore on 8/5/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

import Foundation
import UIKit.UIImage

class SettingController {
    
    // Singleton
    static let shared = SettingController()
    // SoT
    var settings = [Setting]()
    
    init() {
        
        let apps = Setting(name: "Apps", icon: UIImage(named: "apps"))
        let books = Setting(name: "Books", icon: UIImage(named: "books"))
        let music = Setting(name: "Music", icon: UIImage(named: "music"))
    
        settings = [apps, books, music]
    }
    
    
    
    
}
