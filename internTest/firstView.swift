//
//  tryView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct firstView: View {
    var body: some View {
        VStack {
//MARK: - scroll view
        PartScrollView()
//MARK: - buttons under the scroll view

//MARK: - adding dish
            DishTitleView()
//MARK: - content
            AddIngredientButton()
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
            AddButtonView()
            
            
        }
    }
    
    
    
}

struct firstView_Previews: PreviewProvider {
    static var previews: some View {
        firstView()
    }
}

