//
//  AddDishesView.swift
//  internTest
//
//  Created by N S on 31.07.2023.
//

import SwiftUI

struct AddDishesView: View {
    @State private var textFields: [String] = []
    
    @State private var newParts: [String] = []
    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal) {
                ForEach(newParts, id: \.self) { newPart in
                    Button {
                        print("tapped \(newPart)")
                    } label: {
                        HStack {
                            Text("Новый раздел")
                            Image(systemName: "plus.circle")
                        }
                        .padding()
                        .foregroundColor(.green)
                        .background(Color.white)
                        .cornerRadius(15)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .strokeBorder(Color.green, lineWidth: 3)
                        }
                    }
                }
                Button {
                    print("добавляю новый раздел")
                    self.newParts.append("New button")
                } label: {
                    HStack {
                        Text("Новый раздел")
                        Image(systemName: "plus.circle")
                    }
                    .padding()
                    .foregroundColor(.green)
                    .background(Color.white)
                    .cornerRadius(15)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(Color.green, lineWidth: 3)
                    }
                }
  
            }
            
            
            Text("Delete the part")
            
            Text("Content")
            ForEach(newParts, id: \.self) { newPart in
                Button(action: {}) {
                    HStack {
                        Text("Новый раздел")
                        Image(systemName: "plus.circle")
                    }
                }
                .padding()
                .foregroundColor(.green)
                .background(Color.white)
                .cornerRadius(15)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color.green, lineWidth: 3)
                }
            }
            
            
            
            ForEach(textFields, id: \.self) { textField in
                TextField("Dведите текст", text: self.$textFields[self.index(for: textField)])
            }
            
            Button {
                self.textFields.append("")
            } label: {
                Text("Добавить ингридиент")
            }
            
            
            
            
            
            
            
            
            
            
            
            Button {
                
            } label: {
                Text("Download")
            }
            
            Button {
                
            } label: {
                Text("Добавить блюдо")
            }
        }
        
    }
    
    private func addNewPart(for dish: String) -> Int {
        guard let index = newParts.firstIndex(of: dish) else { fatalError("can't find") }
        return index
    }
    
    private func index(for textField: String) -> Int {
        guard let index = textFields.firstIndex(of: textField) else { fatalError("can't find") }
        return index
    }
}

struct AddDishesView_Previews: PreviewProvider {
    static var previews: some View {
        AddDishesView()
    }
}
