//
//  LibraryCell.swift
//  IphoneLibrary
//
//  Created by Ismailov Farrukh on 02/03/24.
//

import SwiftUI

struct LibraryCell: View {

    var library: Library
    private let cellSize: CGFloat = 65

    var body: some View {
        VStack {
            Image(library.imageName)
                .resizable()
                .frame(width: cellSize, height: cellSize)
            Text(library.name)
                .font(.body)
                .foregroundColor(.white)
                .minimumScaleFactor(0.6)
        }
        .padding(.top)
    }
}
