//
//  PriceView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct PriceView: View {
    @State private var priceTitle: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Цена")
                .font(.title)
                .fontWeight(.bold)
            TextField("Цена", text: $priceTitle)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).strokeBorder(Color("specialGreen"), style: StrokeStyle(lineWidth: 1.0)))
        }
        .padding(.horizontal)
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}
