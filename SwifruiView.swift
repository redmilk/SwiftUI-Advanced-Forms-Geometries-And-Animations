//
//  SwifruiView.swift
//  Test
//
//  Created by Danyl Timofeyev on 15.10.2022.
//

import SwiftUI


// MARK: - View
struct SwifruiView: View {
    
    var title: some View {
        Label("Welcome to SwiftUI", systemImage: "person.circle.fill")
            .font(.largeTitle)
    }
    
    var body: some View {
        VStack {
            
            Text("Sonya")
            Text("Sonya")
            HStack {
                Text("Sonya")
                Text("Sonya")
            }
            .modifier(SonyaFormatter())
        }
    }
}

























struct SwifruiView_Previews: PreviewProvider {
    static var previews: some View {
        SwifruiView()
    }
}
