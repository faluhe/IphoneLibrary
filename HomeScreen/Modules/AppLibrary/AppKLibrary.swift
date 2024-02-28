//
//  ContentView.swift
//  HomeScreen
//
//  Created by Ismailov Farrukh on 24/02/24.
//

import SwiftUI

struct AppLibrary: View {

    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)

    @StateObject var viewModel = AppLibraryViewModel()

    var body: some View {
        VStack {
            ZStack {
                VStack {
                    gridView
                    Spacer()
                    dockView
                }
                .padding([.leading, .trailing, .top])
//                HomeScreen()
            }
        }
        .background(
            Image(Images.appLibrary)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }

}


extension AppLibrary {
    private var gridView: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.library) { library in
                VStack {
                    Image(library.imageName)
                        .resizable()
                        .frame(width: 65, height: 65)
                    Text(library.name)
                        .font(.body)
                        .foregroundStyle(Color(uiColor: .white))
                        .minimumScaleFactor(0.6)
                }
                .padding(.top)
            }
        }
    }

    private var dockView: some View { 
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 90)
            .foregroundColor(Color(UIColor.systemGray))
            .opacity(0.5)
            .overlay(
                HStack { 
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.docs) { library in
                            HStack {
                                Image(library.imageName)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                            }
                        }
                    }
                }
            )
    }

    private func handleFrameworkTap(_ framework: Library) {
        viewModel.selectedModel = framework
    }
}


#Preview {
    AppLibrary()
}
