//
//  HomeView.swift
//  Tontrix
//
//  Created by Prateek Saini on 09/05/24.
//

import Foundation
import SwiftUI

struct HomeView: View{
    var body : some View{
        @StateObject var navigationManager = NavigationManager()
        UITabBar.appearance().isHidden = true
        NavigationView{
            ZStack {
                       VStack {
                           Text("Choose Your Stream")
                               .font(.title)
                               .padding()
                           
                           NavigationLink(destination: Stream1View()) {
                               Text("Item 1")
                                   .padding()
                           }
                           .foregroundColor(.black)
                           
                           NavigationLink(destination: Stream2View()) {
                               Text("Item 2")
                                   .padding()
                           }
                           .foregroundColor(.black)
                           
                           NavigationLink(destination: Stream3View()) {
                               Text("Item 3")
                                   .padding()
                           }
                           .foregroundColor(.black)
                       }
                   }
            }
            .navigationTitle("Home")
        
        }
    }

