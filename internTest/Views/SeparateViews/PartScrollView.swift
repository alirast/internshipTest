//
//  PartScrollView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct PartScrollView: View {
    @State var buttons: [String] = ["New part"]
    @State private var isSecondViewVisible = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Раздел")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
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
                                .foregroundColor(Color("specialGreen"))
                                .background(Color.white)
                                .cornerRadius(15)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15)
                                        .strokeBorder(Color("specialGreen"), lineWidth: 3)
                                }
                            } else {
                                Text(button)
                                    .padding()
                                    .foregroundColor(Color("specialGreen"))
                                    .background(.white)
                                    .cornerRadius(15)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 15)
                                            .strokeBorder(Color("specialGreen"), lineWidth: 3)
                                    }
                            }
                        }
                        
                    }
                    
                }
            }
            HStack {
                Button {
                    deletePart()
                } label: {
                    Text("Удалить раздел")
                        .foregroundColor(.gray)
                        .overlay(Rectangle()
                            .fill(Color.gray)
                            .frame(width: 125, height: 1), alignment: .bottom)
                }
           
                Spacer()
                Button {
                    isSecondViewVisible = true
                } label: {
                    Text("Посмотреть раздел")
                        .foregroundColor(.gray)
                        .overlay(Rectangle()
                            .fill(Color.gray)
                            .frame(width: 155, height: 1), alignment: .bottom)
                    NavigationLink(destination: SecondView(), isActive: $isSecondViewVisible) {
                        EmptyView()
                    }
                }
            
            }
            .padding()
            

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
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
    }
    
    
    func deletePart() {
        print("deleting part")
    }
}

struct PartScrollView_Previews: PreviewProvider {
    static var previews: some View {
        PartScrollView()
    }
}
