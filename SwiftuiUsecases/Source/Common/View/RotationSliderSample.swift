//
//  RotationSliderSample.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct RotationSliderSample: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 100
    @State private var text: String = "Sample text"
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(rotation))
                    .transformEffect(.init(scaleX: rotation / 300, y: rotation / 300))
                    .animation(.easeInOut(duration: 5), value: rotation)
                    .foregroundColor(colors[colorIndex])
                Spacer()
                Slider(value: $rotation, in: 0...360, step: 1)
                    .font(Font.system(size: 11, weight: .light, design: .default))
                    .padding()
                    .shadow(color: .blue, radius: 4, x: 0, y: 5)
                
                TextField("Enter text here", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Picker(selection: $colorIndex, label: Text("")) {
                    ForEach(0..<colornames.count) { color in
                        Text(colornames[color])
                                    .foregroundColor(colors[color])
                    }
                }
                .pickerStyle(.wheel)
                .padding()
        
            }
        }
    }
}

struct RotationSliderSample_Previews: PreviewProvider {
    static var previews: some View {
        RotationSliderSample()
    }
}
