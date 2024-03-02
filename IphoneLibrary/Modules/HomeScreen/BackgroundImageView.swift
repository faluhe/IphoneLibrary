//
//  BackgroundImageView.swift
//  IphoneLibrary
//
//  Created by Ismailov Farrukh on 02/03/24.
//

import SwiftUI

struct BackgroundImageView: View {
    
    var topPosition: Bool

    var body: some View {
        GeometryReader { geometry in
            Image(Images.homeScreen)
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .opacity(topPosition ? 0.001 : 1.0)
                .ignoresSafeArea()
        }
    }
}
