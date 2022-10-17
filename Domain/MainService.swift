//
//  MainService.swift
//  Test
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import Combine

final class MainService: ObservableObject {
    @Published var userName = "default"
    @Published var wifiEnabled = true
}
