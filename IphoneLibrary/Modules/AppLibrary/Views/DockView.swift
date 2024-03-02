//
//  DockView.swift
//  IphoneLibrary
//
//  Created by Ismailov Farrukh on 02/03/24.
//

import SwiftUI

struct DockView: View {

    let columns: [GridItem]
    private let dockCornerRadius: CGFloat = 30
    private let dockHeight: CGFloat = 90
    private let dockCellSize: CGFloat = 60

    var body: some View {
        RoundedRectangle(cornerRadius: dockCornerRadius)
            .frame(height: dockHeight)
            .foregroundStyle(Color(uiColor: .systemGray))
            .opacity(0.5)
            .overlay(
                HStack {
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.docs) { library in
                            Image(library.imageName)
                                .resizable()
                                .frame(width: dockCellSize, height: dockCellSize)
                        }
                    }
                }
            )
    }
}
