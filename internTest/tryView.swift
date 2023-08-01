//
//  tryView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct tryView: View {
    @State var buttons: [String] = ["New part"]
    
    var body: some View {
        VStack {
//MARK: - scroll view
            ScrollView(.horizontal) {
                HStack {
                    ForEach(buttons, id: \.self) { button in
                        Button(action: {
                            if button == "New part" {
                                self.showAlert()
                            } else {
                                print(button)
                            }
                        }) {
                            if button == "New part" {
                                HStack {
                                    Text("Новый раздел")
                                    Image(systemName: "plus.circle")
                                }
                                .padding()
                                .foregroundColor(.green)
                                .background(Color.white)
                                .cornerRadius(15)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15)
                                        .strokeBorder(Color.green, lineWidth: 3)
                                }
                            } else {
                                Text(button)
                                    .padding()
                                    .foregroundColor(.green)
                                    .background(.white)
                                    .cornerRadius(15)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 15)
                                            .strokeBorder(Color.green, lineWidth: 3)
                                    }
                            }
                        }
                    }
                }
            }
//MARK: - buttons under the scroll view
            HStack {
                Button {
                    
                } label: {
                    Text("Delete")
                }
                
                Button {
                    
                } label: {
                    Text("Watch")
                }
            }
            
            
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Enter Text", message: nil, preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            if let text = alert.textFields?.first?.text {
                self.buttons.insert(text, at: 0)
            }
        }))
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }


}

struct tryView_Previews: PreviewProvider {
    static var previews: some View {
        tryView()
    }
}

