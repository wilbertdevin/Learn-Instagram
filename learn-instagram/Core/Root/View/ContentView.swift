//
//  ContentView.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else {
                MainTabView()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
