//
//  LibraryView.swift
//  LibraryView
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import SwiftUI

struct LibraryView: View {

    private let cellSize: CGFloat = 65
    private let dockCornerRadius: CGFloat = 30
    private let dockHeight: CGFloat = 90
    private let dockCellSize: CGFloat = 60

    @StateObject var viewModel = LibraryViewModel()

    var body: some View {
        ZStack{
            VStack {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.library) { library in
                        LibraryCell(library: library)
                    }
                }

                Spacer()

                DockView(columns: viewModel.columns)
            }
            .padding([.leading, .trailing, .top])

            HomeScreenView()
        }

        .background(
            Image(Images.appLibrary)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}


#Preview {
    LibraryView()
}
