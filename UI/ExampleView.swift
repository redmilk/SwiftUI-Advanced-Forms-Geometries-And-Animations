//
//  ExampleView.swift
//  Test
//
//  Created by Danyl Timofeyev on 16.10.2022.
//

import SwiftUI
import Combine

// MARK: - VIEW
struct ExampleView: View {
    
    let mainService = MainService()
        
    var body: some View {
        VStack {
            SampleLabelTwo()
            SampleLabelView()
            WifiSampleView()
            TextFieldSampleView()
            ButtonSampleView()
            FlightTextSampleView()
            ModuleItemSampleView()
        }
        .environmentObject(mainService)
    }
}


























struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
