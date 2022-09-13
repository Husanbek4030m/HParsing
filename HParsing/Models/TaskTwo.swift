//
//  TaskTwo.swift
//  HParsing
//
//  Created by Karavella on 13/09/22.
//

import Foundation

class TaskTwo:Decodable {
    var orders: [Order]?
}

class Order: Decodable {
    var orderno:Int?
    var date:Date?
    var trackingno:String?
    var custid:Int?
    var customer: [Customer]?
}

class Customer:Decodable {
    var custid:Int?
    var fname:String?
    var lname:String?
    var address:String?
    var city:String?
    var state:String?
    var zip:String?
}
