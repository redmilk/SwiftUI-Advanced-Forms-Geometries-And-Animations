//
//  SwiftUIView.swift
//  Test
//
//  Created by Danyl Timofeyev on 15.10.2022.
//

import SwiftUI

// MARK: - View Modifier
struct SonyaFormatter: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .cornerRadius(20)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.cyan, radius: 2, x: 0, y: 5)
    }
}


struct SampleLabelView: View {
    var body: some View {
        Label(title: {
            Text("Welcome to SwiftUI")
                .font(.largeTitle)
        }, icon: {
            Circle()
                .fill(Color.blue)
                .frame(width: 25, height: 25)
        })
    }
}

struct WifiSampleView: View {
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        HStack {
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            Toggle(isOn: $wifiEnabled) {
                Text("Enable Wi-Fi")
            }
            .shadow(color: wifiEnabled ? .clear : .red, radius: 1, x: 0, y: 5)
        }
        .padding()
    }
}

struct TextFieldSampleView: View {
    @Binding var userName: String
    
    var body: some View {
        TextField("Enter user name", text: $userName)
            .font(.title)
            .padding()
            .border(.black, width: 10)
            .padding()
            .shadow(color: .blue, radius: 3, x: 0, y: 3)
    }
}

struct ButtonSampleView: View {
    @Binding var userName: String

    var body: some View {
        Button(userName, action: {
            userName = ["qwe", "rty", "uio", "asd", "fgh"][Int.random(in: 0...3)]
        })
        .padding()
        .modifier(SonyaFormatter())
    }
}

struct FlightTextSampleView: View {
    var body: some View {
        HStack {
            Image(systemName: "airplane")
            Text("Flight times:")
            Text("London")
                .layoutPriority(1)
        }
        .font(.largeTitle)
        .frame(width: 250, height: 100, alignment: .center)
        .lineLimit(1)
    }
}

struct ModuleItemSampleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
            Text("Sonya")
            Text("Sonya")
            HStack {
                Text("Sonya")
                Spacer()
                Text("Sonya")
            }
            .padding()
            .modifier(SonyaFormatter())
        }
        .padding()
    }
}


// MARK: - VIEW
struct SwiftUIView: View {
    
    @State private var userName = "default"
    @State private var wifiEnabled = true
    
    var moduleOne: some View {
        VStack {
            SampleLabelView()
            WifiSampleView(wifiEnabled: $wifiEnabled)
            TextFieldSampleView(userName: $userName)
            ButtonSampleView(userName: $userName)
            FlightTextSampleView()
            ModuleItemSampleView()
        }
    }
    
    var body: some View {
        moduleOne
    }
}















































struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
