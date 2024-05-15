//
//  PreferencesUpdatesViewController.swift
//  Mos
//  更新界面
//  Created by Caldis on 2017/1/21.
//  Copyright © 2017 Caldis. All rights reserved.
//

import Cocoa

class PreferencesUpdatesViewController: NSViewController {
    
    // UI Elements
    // 版本号
    @IBOutlet weak var versionLabel: NSTextField!
    
    override func viewDidLoad() {
        // 版本号
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")!
        versionLabel.stringValue = "\(i18n.currentVersion) : \(version as! String)"
    }
    
    // 查询更新
    @IBAction func checkButtonClick(_ sender: NSButton) {
        NSWorkspace.shared.open(URL(string: "https://github.com/Caldis/Mos/releases/")!)
    }
    
}
