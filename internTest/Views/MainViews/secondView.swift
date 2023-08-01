//
//  PartView.swift
//  internTest
//
//  Created by N S on 31.07.2023.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(uiColor: .lightGray))
                .frame(width: 90, height: 90)
                .overlay {
                    Image(systemName: "mountain.2.fill")
                }
                
          
            VStack(alignment: .leading) {
                Text("Vitamin")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Состав: кукуруза, капуста, спаржа, укроп")
                HStack {
                    Image(systemName: "pencil.circle")
                        .foregroundColor(Color(uiColor: UIColor(red: CGFloat(65.0/255), green: CGFloat(144.0/255), blue: CGFloat(149.0/255), alpha: 1.0)))
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "xmark.circle")
                        .foregroundColor(Color(uiColor: UIColor(red: CGFloat(65.0/255), green: CGFloat(144.0/255), blue: CGFloat(149.0/255), alpha: 1.0)))
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            Spacer()
            Text("850₽")
                .fontWeight(.bold)
                .foregroundColor(Color(uiColor: UIColor(red: CGFloat(65.0/255), green: CGFloat(144.0/255), blue: CGFloat(149.0/255), alpha: 1.0)))
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
