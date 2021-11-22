//
//  MainView.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Платежки")
                .badge(1)
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Платежки")
                }
//            Text("Счетчики")
            Meters()
                .tabItem {
                    Image(systemName: "gauge")
                    Text("Счетчики")
                }
            MyFlatView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Моя квартира")
                }
        }
        .font(.headline)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
