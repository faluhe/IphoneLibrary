//
//  TimeView.swift
//  IphoneLibrary
//
//  Created by Ismailov Farrukh on 02/03/24.
//

import SwiftUI

struct TimeView: View {

    var body: some View {
        VStack {
            Text("5:45")
                .font(.system(size: 63, weight: .medium))
            Text("Friday")
                .font(.system(size: 24))
        }
        .padding(.top, 50)
        .foregroundStyle(Color(uiColor: .systemGray))
        .padding(.vertical, 15)
    }
}
