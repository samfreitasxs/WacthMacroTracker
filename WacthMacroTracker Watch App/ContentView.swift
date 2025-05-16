//
//  ContentView.swift
//  WacthMacroTracker Watch App
//
//  Created by Samuel Freitas on 13/05/25.
//

// Create a list item

import SwiftUI

struct ListItem : Identifiable, Hashable {
    let id = UUID()
    
    var description: String
    
    init(_ description: String) {
        self.description = description
    }
    
//Create a model
    
    class ItemListModel: NSObject, ObservableObject {
        @Published var items = [ListItem] ()
    }
    
    @main
    struct WacthTasksListSampleApp: App {
        @StateObject var itemListModel = ItemListModel()
        
        var body: some Scene {
            WindowGroup {
                NavigationStack {
                    ContentView()
                        .environmentObject(itemListModel)
                }
            }
        }
    }
    
    //Create a simple list
    
    
}


