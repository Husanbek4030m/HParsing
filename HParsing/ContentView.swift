//
//  ContentView.swift
//  HParsing
//
//  Created by Karavella on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = EmployeeViewModel()
    
    
    var body: some View {
        NavigationView {
            ZStack{                
                if self.viewModel.isLoading {
                    ProgressView()
                } else {
                    List(viewModel.employees, id: \.id) { it in
                        VStack {
                            HStack {
                                Text("#\(it.id!)").font(.system(size: 28)).foregroundColor(.blue).frame(width: 60)
                                VStack(alignment:.leading) {
                                    Text(it.name!).font(.system(size: 18)).foregroundColor(.black).fontWeight(.bold)
                                    HStack {
                                        Text(it.username!).font(.system(size:14))
                                        VStack{}.frame(width: 1, height: 14).background(.black.opacity(0.2))
                                        Text(it.email!).font(.system(size: 14))
                                    }
                                    HStack {
                                        Text(it.phone!).font(.system(size:14)).foregroundColor(.blue)
                                        VStack{}.frame(width: 1, height: 14).background(.black.opacity(0.2))
                                        Text(it.website!).font(.system(size: 14, weight: .regular, design: .monospaced))
                                    }
                                    HStack{
                                        Text("Address: \(it.address?.city ?? "-"), \(it.address?.street ?? "-"), \(it.address?.suite ?? "-")").font(.system(size: 14)).italic()
                                    }
                                }
                            }
                            
                        }
                    }
                }
            }
            .onAppear{
                viewModel.apiEmpList()
            }
            .navigationBarItems(trailing: Button(action: {
                viewModel.apiEmpList()
            }, label: {
                Image(systemName: "arrow.clockwise")
            }))
            .navigationBarTitle("Parsing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
