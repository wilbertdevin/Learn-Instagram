//
//  SearchViewModel.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 10/12/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task{ try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws{
        self.users = try await UserService.fetchAllUsers()
    }
}
