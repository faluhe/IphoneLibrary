//
//  HomeScreenView.swift
//  HomeScreenView
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import SwiftUI

struct HomeScreenView: View {

    @State private var dragOffset: CGSize = .zero
    @State private var position: CGSize = .zero
    @State var topPosition: Bool = false
    private var dragLimit = UIScreen.main.bounds.height / 2

    var body: some View {
        ZStack {
            BackgroundImageView(topPosition: topPosition)

            VStack {
                TimeView()

                NotificationView()

                Spacer()

                Capsule()
                    .frame(width: 120, height: 5)
                    .foregroundStyle(Color(uiColor: .systemGray))
                    .padding()
            }
        }
        .padding([.leading, .trailing])
        .offset(y: dragOffset.height + position.height)
        .gesture(dragGesture)
        .ignoresSafeArea()
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
    HomeScreenView()
}



