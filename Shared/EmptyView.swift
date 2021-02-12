//
//  EmptyView.swift
//  ToDoMac
//
//  Created by Seokho on 2021/02/12.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack {
            Text(["😏", "😎", "🤭"].randomElement()!)
                .font(.largeTitle)
            Text("To do list is empty.")
                .bold()
                .font(.largeTitle)
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
