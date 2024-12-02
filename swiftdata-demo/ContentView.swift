//
//  ContentView.swift
//  swiftdata-demo
//
//  Created by Dominik Zehe on 02.12.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context // private because only used in this view
    
    // Retrieve all of one data type from the db
    @Query private var items: [DataItem] // updated autoamtically when we add data while app usage
    var body: some View {
        VStack {
            
            List(items) { item in
                HStack {
                    Text(item.creationDate.description)
                    Spacer()
                    // Update an item in the db
                    Button("Update") {
                        item.creationDate = Date()
                    }
                }
                .swipeActions{
                    Button("Delete") {
                        // Delete an item from the db
                        context.delete(item)
                    }
                }
                
            }
            
            Button("Add") {
                // create a new data item
                let data = DataItem()
                // add it to database
                context.insert(data)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
