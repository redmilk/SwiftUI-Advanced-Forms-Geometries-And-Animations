//
//  MainService.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import Combine

class ViewState {
    var userName = "default"
    var wifiEnabled = true
}

final class MainService: ObservableObject {
    @Published var viewState = ViewState()
}
