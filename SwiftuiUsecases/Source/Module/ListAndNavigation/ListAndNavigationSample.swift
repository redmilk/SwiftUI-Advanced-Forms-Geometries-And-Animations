//
//  ListAndNavigationSample.swift
//  SwiftuiUsecases
//
//  Created by Danyl Timofeyev on 18.10.2022.
//

import SwiftUI

struct ListAndNavigationSample: View {
    
    var staticListView: some View {
        VStack {
            Text.getHeavyBold("Static list")
            List {
                HStack {
                    Image(systemName: "trash.circle.fill")
                    Text("Wash the car")
                }
                .listRowSeparator(.hidden)
                HStack {
                    Image(systemName: "person.2.fill")
                    Text("Vacuum house")
                }
                .listSectionSeparatorTint(.blue)
                HStack {
                    Image(systemName: "car.fill")
                    Text("Pick up kids from school bus @ 3pm")
                }
                .listSectionSeparatorTint(.blue)
                HStack {
                    Image(systemName: "trash.circle")
                    Text("Wash the car")
                        .foregroundColor(.white)
                }
                .listRowBackground(Image("simple-img"))
            }
        }
    }
    
    var body: some View {
        VStack {
            staticListView
            //
            
        }
    }
}

struct ListAndNavigationSample_Previews: PreviewProvider {
    static var previews: some View {
        ListAndNavigationSample()
    }
}
