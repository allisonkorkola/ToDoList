import SwiftUI

struct ContentView: View {
    
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.463, saturation: 0.948, brightness: 0.561))
                
                Spacer()
                
                Button(action: { self.showNewTask = true
                                    
                }) {
                    Text("+")
                        .font(.title)
                    
                }
                
                Spacer()
                
            }
            .padding()
        }
        .padding()
     
        List {
                ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
        }
        .listStyle(.plain)
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
