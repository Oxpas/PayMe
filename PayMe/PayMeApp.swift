//
//  PayMeApp.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI


@main
struct PayMeApp: App {
    @State var path: NavigationPath = .init()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                MainTabView(path: $path)
                    .navigationDestination(for: NavigationPage.self) { page in
                        switch page {
                        case .details:
                            DetailsView(path: $path)
                        }
                    }
            }
        }
    }
}
