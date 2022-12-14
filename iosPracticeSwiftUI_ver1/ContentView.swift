//
//  ContentView.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/8/17.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

   
    
    var body: some View {
        
        
        VStack {
            
            //修改字型顏色
            Text("排序")
                .font(.title)
                .fontWeight(.bold)
            .foregroundColor(.blue)
            
            HStack{
            Text("first")
            Text("second")
            Text("third")
            }
                
            VStack{
            Label("Lightning", systemImage: "bolt.fill")
            Label("Photo", systemImage: "photo.fill")
            Label("colored", systemImage: "books.vertical.fill")
                .foregroundColor(.green)
            }
            .padding(.horizontal, 20.0)

            TabView{
                
                InfoPage()
                    .tabItem {
                        Label("Photo",systemImage: "photo.fill")
                    }
                
                Image("thumb-jpg")
                    .resizable()
                    .scaledToFit()
                    .tabItem {
                        //Text("Person")
                        Label("Person",systemImage: "person.fill")
                    }
                
               
                
                Image("airdropcat")
                    .resizable()
                    .scaledToFit()
                    .tabItem {
                        Label("Setting",systemImage: "gearshape.fill")
                    }
                
                
                
                
            }
            
        }
    
        
        
        
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                    } label: {
                        Text(item.timestamp!, formatter: itemFormatter)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).previewInterfaceOrientation(.portrait)
    }
}
