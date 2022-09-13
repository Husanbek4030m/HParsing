//
//  Task1.swift
//  HParsing
//
//  Created by Karavella on 12/09/22.
//

import Foundation
import SwiftUI


struct TaskOne: Decodable {
    var Time:Date?
    var Uptime: Int?
    var Vcc: Double?
    var POWER: String?
    var Wifi: TaskOneChild?
}


struct TaskOneChild: Decodable {
    var AP: Int?
    var SSId: String?
    var RSSI: Int?
    var APMac: Date?
}



