//
//  AppLibraryViewModel.swift
//  HomeScreen
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import SwiftUI

final class AppLibraryViewModel: ObservableObject {

    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var selectedModel: Library? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
}
