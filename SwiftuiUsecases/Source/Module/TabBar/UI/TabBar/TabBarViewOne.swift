//
//  TabBarViewOne.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct TabBarViewOne: View {
    var body: some View {
        Text("View Two").onAppear {
            print("View One did appear")
        }
        .onDisappear {
            print("View One did disappear")
        }
    }
}

struct TabBarViewOne_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewOne()
    }
}
