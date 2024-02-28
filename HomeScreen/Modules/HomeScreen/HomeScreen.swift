//
//  HomeScreen.swift
//  HomeScreen
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import SwiftUI

struct HomeScreen: View {

    @State private var dragOffset: CGSize = .zero
    @State private var position: CGSize = .zero
    @State var topPosition: Bool = false
    @State var dragLimit = UIScreen.main.bounds.height / 2

    var body: some View {
        ZStack {
            contentView
                .background(backgroundImageView)
                .padding([.leading, .trailing])
                .offset(y: dragOffset.height + position.height)
                .gesture(dragGesture)
        }
        .ignoresSafeArea()
    }
}



extension HomeScreen {

    private var contentView: some View {
        VStack {
            VStack {
                Text("5:45")
                    .font(.system(size: 64, weight: .medium))
                Text("Tuesday, Feb 27")
                    .font(.system(size: 24))
            }
            .padding(.top, 50)
            .foregroundStyle(Color(uiColor: .systemGray))
            .padding(.vertical, 15)

            VStack(alignment: .leading) {
                HStack {
                    Image("instagram")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(Color(UIColor.systemFill))
                        .cornerRadius(4)

                    Text("Instagram")
                        .font(.caption)

                    Spacer()

                    Text("21m ago")
                        .font(.caption)
                }

                Text("Bellulio")
                    .font(.headline)
                Text("Giving you a massage tonight ❤️")
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(12)

            Spacer()

            Capsule()
                .frame(width: 120, height: 5)
                .foregroundColor(Color(UIColor.systemGray))
                .padding()
        }
    }

    private var backgroundImageView: some View {
        GeometryReader { geometry in
            Image(Images.homeScreen)
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .opacity(topPosition ? 0.0001 : 1.0)
                .ignoresSafeArea()
        }
    }

    private var dragGesture: some Gesture {
        DragGesture()
            .onChanged { gesture in
                guard gesture.translation.height < .zero || topPosition else { return }
                dragOffset = gesture.translation
            }
            .onEnded { gesture in
                withAnimation(.spring()) {
                    handleDragEnd(gesture)
                }
            }
    }

    private func handleDragEnd(_ gesture: DragGesture.Value) {
        if gesture.translation.height < -dragLimit {
            position.height = -UIScreen.main.bounds.height + 50
        } else if gesture.translation.height > 300 {
            position.height = .zero
            topPosition = false
        }

        dragOffset = .zero
        topPosition = position.height < -dragLimit
    }
}


#Preview {
    HomeScreen()
}



