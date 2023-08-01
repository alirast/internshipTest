//
//  PartView.swift
//  internTest
//
//  Created by N S on 31.07.2023.
//

import SwiftUI

struct PartView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
            VStack(alignment: .leading) {
                Text("Vitamin")
                Text("Content: coco, cabbage")
                HStack {
                    Image(systemName: "pencil")
                    Image(systemName: "cross")
                }
            }
            Text("850")
        }
    }
}

struct PartView_Previews: PreviewProvider {
    static var previews: some View {
        PartView()
    }
}
