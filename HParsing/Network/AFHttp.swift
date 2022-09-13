//
//  AFHttp.swift
//  HNetwork
//
//  Created by Karavella on 12/09/22.
//

import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SERVER = "https://jsonplaceholder.typicode.com/"
private let DEV_SERVER = "https://jsonplaceholder.typicode.com/"

let headers: HTTPHeaders = [
]

class AFHttp {
    class func get(url: String, params: Parameters, handler: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url), method: .get, parameters: params, headers: headers)
            .validate().responseJSON(completionHandler: handler)
    }
    
    
    class func server(url: String) -> URL {
        if(IS_TESTER) {
            return URL(string: DEV_SERVER + url)!
        }
        return URL(string: DEP_SERVER + url)!
    }
    
    
    //MARK : - apilar
    static let API_EMPLOYEES_LIST = "users"
    
       
    
    // MARK : - Paramslar
    
    class func paramsEmpty() -> Parameters {
        let par: Parameters = [:]
        return par
    }
    
}
