//
//  ContentView.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
