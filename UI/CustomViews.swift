//
//  CustomViews.swift
//  Test
//
//  Created by Danyl Timofeyev on 16.10.2022.
//

import SwiftUI

// MARK: - Custom Views

struct SampleLabelTwo: View {
    var body: some View {
        Label("Label example", systemImage: "person.circle.fill")
            .font(.largeTitle)
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
    @EnvironmentObject var mainService: MainService
    
    var body: some View {
        HStack {
            Image(systemName: mainService.wifiEnabled ? "wifi" : "wifi.slash")
            Toggle(isOn: $mainService.wifiEnabled) {
                Text("Enable Wi-Fi")
            }
            .shadow(color: mainService.wifiEnabled ? .clear : .red, radius: 1, x: 0, y: 5)
        }
        .padding()
    }
}

struct TextFieldSampleView: View {
    @EnvironmentObject var mainService: MainService

    var body: some View {
        TextField("Enter user name", text: $mainService.userName)
            .font(.title)
            .padding()
            .border(.black, width: 10)
            .padding()
            .shadow(color: .blue, radius: 3, x: 0, y: 3)
    }
}

struct ButtonSampleView: View {
    @EnvironmentObject var mainService: MainService

    var body: some View {
        Button(mainService.userName, action: {
            mainService.userName = ["qwe", "rty", "uio", "asd", "fgh"][Int.random(in: 0...3)]
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
