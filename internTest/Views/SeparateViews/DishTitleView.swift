//
//  DishTitleView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct DishTitleView: View {
        @State private var dishTitle: String = ""
        var body: some View {
            VStack(alignment: .leading) {
                Text("Блюдо")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("Название", text: $dishTitle)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 15).strokeBorder(Color("specialGreen"), style: StrokeStyle(lineWidth: 1.0)))
            }
            .padding(.horizontal)
        }

}

struct DishTitleView_Previews: PreviewProvider {
    static var previews: some View {
        DishTitleView()
    }
}
