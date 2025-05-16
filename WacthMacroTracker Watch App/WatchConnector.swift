//
//  WatchConnector.swift
//  WacthMacroTracker
//
//  Created by Samuel Freitas on 13/05/25.
//

import Foundation
import WatchConnectivity

class WatchConnector: NSObject {
    
    var session: WCSession
    
    init( session: WCSession = .default) {
        self.session = session
    }
}
