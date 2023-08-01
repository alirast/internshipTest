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
                .background(Color("specialGreen"))
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
