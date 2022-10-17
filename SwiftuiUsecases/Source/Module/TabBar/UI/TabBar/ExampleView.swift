//
//  ExampleView.swift
//  Test
//
//  Created by Danyl Timofeyev on 16.10.2022.
//

import SwiftUI
import Combine

// MARK: - VIEW
struct ExampleView: View {
    
    var body: some View {
        TabView {
            TabBarViewOne()
                .tabItem {
                    Image(systemName: "01.circle")
                    Text("First")
                }
            
            TabBarViewTwo()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Second")
                }
            
            TabBarViewThree()
                .tabItem {
                    Image(systemName: "03.circle")
                    Text("Third")
                }
            
            TabBarViewFour()
                .tabItem {
                    Image(systemName: "04.circle")
                    Text("Fourth")
                }
        }
    }
}


























struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
