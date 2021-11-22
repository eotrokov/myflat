//
//  MyFlatView.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI

struct MyFlatView: View {
    var body: some View {
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 200)

                CircleImage()
                    .offset(x: 100, y: -100)
                    .padding(.bottom, -100)

                VStack(alignment: .leading) {
                    Text("Квартира")
                        .font(.title)

                    HStack {
                        Text("65 лет Победы, 21, 205")
                        Spacer()
                        Text("Калуга")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                }
                .padding()

                Spacer()
            }
        }
}

struct MyFlatView_Previews: PreviewProvider {
    static var previews: some View {
        MyFlatView()
    }
}
