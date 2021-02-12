//
//  ViewList.swift
//  ToDoMac
//
//  Created by Seokho on 2021/02/12.
//

import SwiftUI

enum ViewList: String, CaseIterable {
    case Total
    case Will
    case Done
    case Setting
    
    func getImageName() -> String {
        switch self {
        case .Total:
            return "list.dash"
        case .Will:
            return "calendar"
        case .Done:
            return "pin"
        case .Setting:
            return "gear"
        }
    }
    
    @ViewBuilder
    func getDestinationView() -> some View {
        switch self {
        case .Total:
            TotalContentView()
        case .Will:
            WillContentView()
        case .Done:
            DoneContentView()
        case .Setting:
            TotalContentView()
        }

    }
}
