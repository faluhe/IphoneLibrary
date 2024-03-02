//
//  NotificationView.swift
//  IphoneLibrary
//
//  Created by Ismailov Farrukh on 02/03/24.
//

import SwiftUI

struct NotificationView: View {

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("instagram")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(Color(uiColor: .systemFill))
                    .cornerRadius(4)

                Text("Instagram")
                    .font((.caption))

                Spacer()

                Text("20m ago")
                    .font(.caption)
            }

            Text("iOS dev")
                .font(.headline)
            Text("Notification")
        }
        .padding()
        .background(Color(uiColor: .secondarySystemBackground))
        .cornerRadius(12)
    }
}
