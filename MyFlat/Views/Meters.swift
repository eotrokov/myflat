//
//  Meters.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI

struct Meters: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: WaterMeterView()) {
                    Label("Вода", systemImage: "drop.circle")
                }
                .navigationTitle("Счетчики")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct Meters_Previews: PreviewProvider {
    static var previews: some View {
        Meters()
    }
}
