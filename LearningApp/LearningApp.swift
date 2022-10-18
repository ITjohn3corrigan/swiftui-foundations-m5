//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Corrigan, John on 10/5/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
                
        }
    }
}
