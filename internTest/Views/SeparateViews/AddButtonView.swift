//
//  AddButtonView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct AddButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Добавить блюдо")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(uiColor: UIColor(red: CGFloat(65.0/255), green: CGFloat(144.0/255), blue: CGFloat(149.0/255), alpha: 1.0)))
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
        }
        .padding()
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
