//
//  TabBarViewOne.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct TabBarViewOne: View {
    @State var title = "Async task sample"
    
    var body: some View {
        VStack {
            Divider()
            // MARK: - Async await
            Text(title)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .onAppear {
                    title = "Async task sample"
                    print("View One did appear")
                }
                .onDisappear {
                    print("View One did disappear")
                }
                .task(priority: .background) {
                    title = await changeTitle()
                }
            
            // MARK: - Alignment guide
            Divider()
            Text("alignmentGuide")

            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 120, height: 50)
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(.leading, computeValue: { d in 120.0 })
                    .frame(width: 200, height: 50)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 180, height: 50)
            }
            
            Spacer()
            Text("alignmentGuide dimensions")
            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 120, height: 50)
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(.leading,
            computeValue: { d in d.width / 3 }) .frame(width: 200, height: 50)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 180, height: 50)
            }
            
            Text("alignmentGuide dimensions Horizontal/Vertical Alignment")
            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 120, height: 50)
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(.leading,
                                    computeValue: { d in d[HorizontalAlignment.leading] - 100 })
                    .frame(width: 200, height: 50)
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 180, height: 50)
            }
        }
        .padding()
    }
    
    func changeTitle() async -> String {
        Thread.sleep(forTimeInterval: 2)
        return "Async task complete"
    }
}

struct TabBarViewOne_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewOne()
    }
}
