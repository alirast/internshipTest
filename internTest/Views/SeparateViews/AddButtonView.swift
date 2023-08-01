//
//  AddButtonView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct AddButtonView: View {
    @State private var isSecondViewVisible = false
    var body: some View {
        Button {
            isSecondViewVisible = true
        } label: {
            Text("Добавить блюдо")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("specialGreen"))
                .foregroundColor(.white)
                .font(.title)
                .cornerRadius(10)
            NavigationLink(destination: SecondView(), isActive: $isSecondViewVisible) {
                EmptyView()
            }
        }
        .padding()
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
