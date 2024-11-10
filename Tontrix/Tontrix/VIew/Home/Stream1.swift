//
//  Stream1.swift
//  Tontrix
//
//  Created by Prateek Saini on 09/05/24.
//

import Foundation
import SwiftUI

struct Stream1View: View{
    @State private var name = ""
    
    var body : some View{
        ZStack{
            VStack{
                Text("Personal details:")
            }
            VStack{
                HStack{
                    Text("Name in capital -")
                }
                HStack{
                    TextField("ENTER YOUR NAME", text: $name)
                        .multilineTextAlignment(.center)
                }
            }
        }.onAppear()
    }
}
