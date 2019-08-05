//
//  SettingTableViewController.swift
//  SettingsPractice
//
//  Created by Michael Moore on 8/5/19.
//  Copyright © 2019 Michael Moore. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.setting = setting
        cell.delegate = self
        
        return cell
    }
}

extension SettingTableViewController: SettingTableViewCellDelegate {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        <#code#>
    }
    
    
}
