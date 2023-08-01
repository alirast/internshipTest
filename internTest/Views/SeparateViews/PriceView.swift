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
            TextField("Цена", text: $priceTitle)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).strokeBorder(Color(uiColor: UIColor(red: CGFloat(65.0/255), green: CGFloat(144.0/255), blue: CGFloat(149.0/255), alpha: 1.0)), style: StrokeStyle(lineWidth: 1.0)))
        }
        .padding()
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}
