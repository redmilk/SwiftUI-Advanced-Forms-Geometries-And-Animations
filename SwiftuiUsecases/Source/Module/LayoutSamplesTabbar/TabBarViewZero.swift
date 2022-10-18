//
//  TabBarZero.swift
//  SwiftuiUsecases
//
//  Created by Danyl Timofeyev on 18.10.2022.
//

import SwiftUI

extension HorizontalAlignment {
    enum MyHorizontal: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}

extension VerticalAlignment {
    enum MyVertical: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    
    static let myAlignment = VerticalAlignment(MyVertical.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment, vertical: .myAlignment)
}


struct TabBarViewZero: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Custom alignments")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            // Stack 1
            ZStack(alignment: .myAlignment) {
               Rectangle()
                    .foregroundColor(Color.black)
                    .alignmentGuide(HorizontalAlignment.myAlignment)
                                       { d in d[.trailing]}
                    .alignmentGuide(VerticalAlignment.myAlignment)
                                       { d in d[VerticalAlignment.bottom] }
                    .frame(width: 50, height: 50)
               Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(VerticalAlignment.myAlignment)
                                       { d in d[VerticalAlignment.top] }
                    .alignmentGuide(HorizontalAlignment.myAlignment)
                                       { d in d[HorizontalAlignment.center] }
                    .frame(width: 50, height: 50)
                Circle()
                    .foregroundColor(Color.blue)
                    .alignmentGuide(HorizontalAlignment.myAlignment)
                                       { d in d[.leading] }
                    .alignmentGuide(VerticalAlignment.myAlignment)
                                       { d in d[.bottom] }
                    .frame(width: 50, height: 50)
            }
            .shadow(color: .blue, radius: 5, x: 0, y: 3)
                        
            // Stack 2
            ZStack(alignment: .myAlignment) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing]}
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
                Rectangle()
                    .foregroundColor(Color.black)
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.bottom] }
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.leading] }
                    .frame(width: 50, height: 50)
                Circle()
                    .foregroundColor(Color.blue)
                    //.alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.leading] }
                    //.alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
            }
            .shadow(color: .blue, radius: 5, x: 0, y: 3)
            
            // Stack 3
            ZStack(alignment: .myAlignment) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing]}
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
                Rectangle()
                    .foregroundColor(Color.black)
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.bottom] }
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing] }
                    .frame(width: 50, height: 50)
                Circle()
                    .foregroundColor(Color.blue)
                    //.alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.leading] }
                    //.alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
            }
            .shadow(color: .blue, radius: 5, x: 0, y: 3)
            
            // Stack 4
            ZStack(alignment: .myAlignment) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing]}
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
                Rectangle()
                    .foregroundColor(Color.black)
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.bottom] }
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing] }
                    .frame(width: 50, height: 50)
                Circle()
                    .foregroundColor(Color.blue)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing] }
                    //.alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
            }
            .shadow(color: .blue, radius: 5, x: 0, y: 3)
            
            // Stack 5
            ZStack(alignment: .myAlignment) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing]}
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
                Rectangle()
                    .foregroundColor(Color.black)
                    .alignmentGuide(VerticalAlignment.myAlignment) { d in d[.bottom] }
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.trailing] }
                    .frame(width: 50, height: 50)
                Circle()
                    .foregroundColor(Color.blue)
                    .alignmentGuide(HorizontalAlignment.myAlignment) { d in d[.leading] }
                    //.alignmentGuide(VerticalAlignment.myAlignment) { d in d[.top] }
                    .frame(width: 50, height: 50)
            }
            .shadow(color: .blue, radius: 5, x: 0, y: 3)
        }
    }
}

struct TabBarZero_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewZero()
    }
}
