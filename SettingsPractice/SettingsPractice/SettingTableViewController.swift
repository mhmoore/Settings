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
    // cell gets switched, calls delegate (which is the tableView)
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        // grab setting off of the cell
        guard let setting = cell.setting,
        // find indexPath of the cell (to be refreshed later)
        let indexPath = tableView.indexPath(for: cell) else { return }
        // setting controller updates the setting
        SettingController.shared.setIsOn(for: setting, isOn: isOn)
        // reload cell's row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
