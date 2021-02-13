//
//  ContentView.swift
//  Shared
//
//  Created by Seokho on 2021/02/12.
//

import SwiftUI

struct TotalContentView: View {
    
    var todo: [String] = [String]()
    
    var body: some View {
        
        if todo.isEmpty {
            EmptyView()
                .toAny()
        } else {
            Text("Total")
                .toAny()
                .padding()
                .navigationTitle("Total")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TotalContentView()
    }
}
