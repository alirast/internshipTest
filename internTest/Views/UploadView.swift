//
//  UploadView.swift
//  internTest
//
//  Created by N S on 01.08.2023.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Circle()
                    .fill(.gray)
                    .frame(width: 50, height: 50)
                    .overlay {
                        Image(systemName: "mountain.2.fill")
                    }
                
                Button {
                    print("uploading photo for the dish")
                } label: {
                    Text("Загрузить")
                        .foregroundColor(.gray)
                        .overlay(Rectangle()
                            .fill(Color.gray)
                            .frame(width: 80, height: 1), alignment: .bottom
                                 
                        )
                }
            }
        }
        .frame(width: 350, alignment: .leading)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
