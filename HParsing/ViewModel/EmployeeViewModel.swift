//
//  EmployeeViewModel.swift
//  HParsing
//
//  Created by Karavella on 13/09/22.
//

import Foundation

class EmployeeViewModel: ObservableObject {
    @Published var employees = [Employee]()
    @Published var isLoading = false
    
    func apiEmpList() {
        self.isLoading = true
        AFHttp.get(url: AFHttp.API_EMPLOYEES_LIST, params: AFHttp.paramsEmpty()) { res in
            self.isLoading = false
            
            switch res.result {
            case .success:
                let emp = try! JSONDecoder().decode([Employee].self, from: res.data!)
                self.employees = emp
            case let .failure(err):
                print("---------\(err)")
                
            }
            
        }
    }
    
}
