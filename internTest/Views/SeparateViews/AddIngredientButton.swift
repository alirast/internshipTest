//
//  AddIngredientButton.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct AddIngredientButton: View {
    @State private var newContent: [String] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Cостав")
                .font(.title)
                .fontWeight(.bold)
            Button {
                self.showAlert()
            } label: {
                Text("Добавить ингредиент")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("specialGreen"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
    
    private func showAlert() {
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

struct AddIngredientButton_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredientButton()
    }
}
