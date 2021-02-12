//
//  SidebarView.swift
//  ToDoMac
//
//  Created by Seokho on 2021/02/12.
//

import SwiftUI

//달이 가을
struct SidebarView: View {
    
    let viewList: [ViewList] = [.Total, .Will, .Done]
    
    var body: some View {
        NavigationView {
            List {
                Text("Menu")
                Group{
                    ForEach(viewList, id: \.self, content: { view in
                        NavigationLink(destination: view.getDestinationView()) {
                            Label(view.rawValue, systemImage: view.getImageName())
                        }
                    })
                }
                .modifier(MacOnlyDivider())
                NavigationLink(destination: ViewList.Setting.getDestinationView()) {
                    Label(ViewList.Setting.rawValue, systemImage: ViewList.Setting.getImageName())
                }
            }
            .listStyle(getListStyle())
            .modifier(MacOnlyToolbar())
            TotalContentView()
        }
    }
}




struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
