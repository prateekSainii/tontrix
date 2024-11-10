//
//  NavigationController.swift
//  Tontrix
//
//  Created by Prateek Saini on 09/05/24.
//

import Foundation
import SwiftUI

class NavigationManager: ObservableObject {
    @Published var currentView: AnyView?
    
    func navigateTo<Content: View>(_ view: Content) {
        currentView = AnyView(view)
    }
}
