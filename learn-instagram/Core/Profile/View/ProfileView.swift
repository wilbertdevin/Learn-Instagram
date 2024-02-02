//
//  ProfileView.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 19/11/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
                    
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}
