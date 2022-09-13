//
//  EmployeeModel.swift
//  HParsing
//
//  Created by Karavella on 12/09/22.
//

import Foundation
struct Employee: Decodable {
    var id: Int?
    var name: String?
    var username:String?
    var email:String?
    var address:Address?
    var phone:String?
    var website:String?
    var company:Company?
}

struct Address:Decodable {
    var street:String?
    var suite:String?
    var city:String?
    var zipcode:String?
    var geo:Geo?
}

struct Geo:Decodable {
    var lat:String?
    var lng:String?
}
struct Company:Decodable {
    var name:String?
    var catchPharse:String?
    var bs:String?
}
