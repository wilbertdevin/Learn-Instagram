//
//  ProfileHeaderView.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 01/12/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                CircularProfileImageView(user: user, size: .large)
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")
                    
                    UserStatView(value: 3, title: "Followers")
                    
                    UserStatView(value: 3, title: "Following")
                    
                }
            }
            .padding(.horizontal)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            
            Button(action: {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follow user..")
                }
                
            }, label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(6)
                    .foregroundColor(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                    }
            })
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile, content: {
            EditProfileView(user: user)
        })
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[1])
}
