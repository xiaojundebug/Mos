//
//  WelcomeWindowController.swift
//  Mos
//  欢迎界面的 Window
//  Created by Caldis on 2018/7/9.
//  Copyright © 2018 Caldis. All rights reserved.
//

import Cocoa

class WelcomeWindowController: NSWindowController, NSWindowDelegate {
    
    @IBOutlet weak var welcomeWindow: NSWindow!
    
    func windowWillClose(_ notification: Notification) {
        WindowManager.shared.hideWindow(withIdentifier: WINDOW_IDENTIFIER.welcomeWindowController, destroy: true)
    }
    
}
