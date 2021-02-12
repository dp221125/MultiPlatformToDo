//
//  ViewUtility.swift
//  ToDoMac
//
//  Created by Seokho on 2021/02/12.
//

import SwiftUI

#if os(macOS)
func toggleSidebar() {
    NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}

func getListStyle() -> SidebarListStyle {
    return SidebarListStyle()
}
struct MacOnlyToolbar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbar{
                ToolbarItem(placement: .navigation){
                    Button(action: toggleSidebar, label: {
                        Image(systemName: "sidebar.left")
                    })
                }
            }
    }
}
struct MacOnlyDivider: ViewModifier {
    func body(content: Content) -> some View {
        return Divider()
    }
}
#else
func getListStyle() -> GroupedListStyle {
    return GroupedListStyle()
}
struct MacOnlyToolbar: ViewModifier {
    func body(content: Content) -> some View {
        content
    }
}
struct MacOnlyDivider: ViewModifier {
    func body(content: Content) -> some View {
        return content
    }
}
#endif
