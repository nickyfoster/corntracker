//
//  Footer.swift
//  Corny
//
//  Created by Nick Foster on 21.12.2022.
//

import SwiftUI

struct AppFooter: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Made with ❤️ by Nick Foster")
                .font(.footnote)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding(.vertical, 10)
    }
}
