//
//  ContentView.swift
//  Corny
//
//  Created by Nick Foster on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            Text("CornCrave")
                .padding(10)
                .font(.largeTitle)
                .foregroundColor(Color("maize"))
            Spacer()
            CornCounterView()
            Spacer()
            AppFooter()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
