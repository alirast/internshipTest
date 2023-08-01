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
            Image(systemName: "person")
            VStack(alignment: .leading) {
                Text("Vitamin")
                Text("Content: coco, cabbage")
                HStack {
                    Image(systemName: "pencil.circle")
                    Image(systemName: "xmark.circle")
                }
            }
            Text("850")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
