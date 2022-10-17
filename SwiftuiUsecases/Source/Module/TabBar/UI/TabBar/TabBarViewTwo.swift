//
//  TabBarViewTwo.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct TabBarViewTwo: View {
    @State private var text: String = ""
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) { newValue in
                print("onChange triggered")
                print(newValue)
            }
    }
}

struct TabBarViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewTwo()
    }
}
