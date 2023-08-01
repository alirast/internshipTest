//
//  tryView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct firstView: View {
    @State private var newContent: [String] = []


    var body: some View {
        VStack {
//MARK: - scroll view
        PartScrollView()
//MARK: - buttons under the scroll view

//MARK: - adding dish
            DishTitleView()
//MARK: - content
            Button {
                self.showAlert()
            } label: {
                Text("Добавить ингредиент")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
//MARK: - upload
            HStack {
                Image(systemName: "photo")
                    
                Button {
                    
                } label: {
                    Text("Загрузить")
                        .foregroundColor(.gray)
                        .overlay(Rectangle()
                            .fill(Color.gray)
                            .frame(width: 80, height: 1), alignment: .bottom
                        
                        )
                }
            }
//MARK: - price
            PriceView()
//MARK: - calories
            CaloriesView()
//MARK: - add button
            Button {
                
            } label: {
                Text("Добавить блюдо")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(10)
            }
            .padding()
            
            
        }
    }
    
    
    
    func showAlert() {
        let alert = UIAlertController(title: "Enter text", message: nil, preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            if let text = alert.textFields?.first?.text {
                self.newContent.insert(text, at: 0)
            }
        }))
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
    }
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        firstView()
    }
}

