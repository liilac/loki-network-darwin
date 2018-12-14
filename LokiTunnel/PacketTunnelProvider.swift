//
//  PacketTunnelProvider.swift
//  LokiTunnel
//
//  Created by Lilac on 15/12/18.
//  Copyright © 2018 Loki Project. All rights reserved.
//

import NetworkExtension

class PacketTunnelProvider: NEPacketTunnelProvider {
  
    // pointer to instance of libllarp main context
  var llarpContext : OpaquePointer?

    override func startTunnel(options: [String : NSObject]?, completionHandler: @escaping (Error?) -> Void) {
        // Add code here to start the process of connecting the tunnel.
    }
    
    override func stopTunnel(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void) {
        // Add code here to start the process of stopping the tunnel.
        completionHandler()
    }
    
    override func handleAppMessage(_ messageData: Data, completionHandler: ((Data?) -> Void)?) {
        // Add code here to handle the message.
        if let handler = completionHandler {
            handler(messageData)
        }
    }
    
    override func sleep(completionHandler: @escaping () -> Void) {
        // Add code here to get ready to sleep.
        completionHandler()
    }
    
    override func wake() {
        // Add code here to wake up.
    }
}
