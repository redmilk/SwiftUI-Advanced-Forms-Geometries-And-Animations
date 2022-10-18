//
//  TabBarViewThree.swift
//  SwiftuiUsecases
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

struct TabBarViewThree: View {
    let mainService = MainService()

    var body: some View {
        VStack {
            SampleLabelTwo()
            Divider()
            SampleLabelView()
            WifiSampleView()
            Divider()
            TextFieldSampleView()
            Divider()
            ButtonSampleView()
            FlightTextSampleView()
            ModuleItemSampleView()
        }
        .environmentObject(mainService)
    }
}

struct TabBarViewThree_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewThree()
    }
}
