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

//MARK: - adding dish
            DishTitleView()
//MARK: - content
            AddIngredientButton()
//MARK: - upload
            UploadView()
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

