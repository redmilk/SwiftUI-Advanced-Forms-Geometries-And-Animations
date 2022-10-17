//
//  TabBarViewOne.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct TabBarViewOne: View {
    @State var title = "View One"
    
    var body: some View {
        Text(title)
            .onAppear {
                title = "View One"
                print("View One did appear")
            }
            .onDisappear {
                print("View One did disappear")
            }
            .task(priority: .background) {
                title = await changeTitle()
            }
    }
    
    func changeTitle() async -> String {
        Thread.sleep(forTimeInterval: 5)
        return "Async task complete"
    }
}

struct TabBarViewOne_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewOne()
    }
}
