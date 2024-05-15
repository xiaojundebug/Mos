//
//  MonitorWindowController.swift
//  Mos
//  滚动监控界面的容器 Window
//  Created by Caldis on 2017/1/15.
//  Copyright © 2017 Caldis. All rights reserved.
//

import Cocoa

class MonitorWindowController: NSWindowController, NSWindowDelegate {
    
    @IBOutlet weak var monitorWindow: NSWindow!
    
    func windowWillClose(_ notification: Notification) {
        WindowManager.shared.hideWindow(withIdentifier: WINDOW_IDENTIFIER.monitorWindowController, destroy: true)
    }
    
}
