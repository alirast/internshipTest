//
//  CaloriesView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct CaloriesView: View {
    @State private var caloriesTitle: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Энергетическая ценность")
                .font(.title)
            
            TextField("Энергетическая ценность", text: $caloriesTitle)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).strokeBorder(Color.green, style: StrokeStyle(lineWidth: 1.0)))
         
        }
        .padding()
    }
}

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
    }
}
