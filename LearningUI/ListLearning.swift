import SwiftUI

struct ListLearning: View {
    
    @State var fruits: [String] = ["apple", "banana", "mango", "avocado"]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                
                
                        
            }
            
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
            trailing:
                                    Button(action: {
                fruits.append("Strawberry")
                
                
            }, label: {
                Text("Add")
            })
            
            
            )
            .accentColor(.purple)
        }
    }
    
    func delete(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListLearning()
}
