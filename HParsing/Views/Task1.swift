//
//  Task1.swift
//  HParsing
//
//  Created by Karavella on 12/09/22.
//

import SwiftUI

struct Task1: View {
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                VStack{
                    HStack{
                        Text("Time:")
                        //Text(self.taskObj.POWER!)
                    }
                }
            }
            .navigationBarTitle("Task1")
        }
        .onAppear{
        }
    }
}

struct Task1_Previews: PreviewProvider {
    static var previews: some View {
        Task1()
    }
}
