//
//  ExampleView.swift
//  Test
//
//  Created by Danyl Timofeyev on 16.10.2022.
//

import SwiftUI

// MARK: - VIEW
struct ExampleView: View {
    
    @State private var userName = "default"
    @State private var wifiEnabled = true
    
    var moduleOne: some View {
        VStack {
            SampleLabelTwo()
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


struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
