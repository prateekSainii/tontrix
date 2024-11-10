//
//  HomePageView.swift
//  Tontrix
//
//  Created by Prateek Saini on 25/02/24.
//

import SwiftUI

struct HomePageView: View {
    @State var selectedtab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
                   TabView(selection: $selectedtab) {
                       HomeView()
                           .tag(0)

                       ProfileView()
                           .tag(1)
                   }
               }
        ZStack{
            HStack{
                ForEach((TabbedItems.allCases), id: \.self){ item in
                    Button{
                        selectedtab = item.rawValue
                    } label: {
                        CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedtab == item.rawValue))
                    }
                }
            }
            .padding(6)
        }
        .frame(height: 70)
        .background(.purple.opacity(0.2))
        .cornerRadius(35)
        .padding(.horizontal, 26)
    }
}

extension HomePageView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 60)
        .background(isActive ? .purple.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case profile

    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        }
    }
}
