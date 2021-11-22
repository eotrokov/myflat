//
//  WaterMeterView.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI

struct WaterMeterView: View {
    @State private var hot: String = ""
    @State private var cold: String = ""
    
    
    let results = [
        SimpleGameResult(hot: 8, cold: 554, date: "01.2021"),
        SimpleGameResult(hot: 5, cold: 55, date: "02.2021"),
        SimpleGameResult(hot: 10, cold: 54, date: "03.2021"),
        SimpleGameResult(hot: 8, cold: 554, date: "04.2021"),
        SimpleGameResult(hot: 5, cold: 55, date: "05.2021"),
        SimpleGameResult(hot: 10, cold: 54, date: "06.2021"),
        SimpleGameResult(hot: 8, cold: 554, date: "07.2021"),
        SimpleGameResult(hot: 5, cold: 55, date: "08.2021"),
        SimpleGameResult(hot: 10, cold: 54, date: "09.2021"),
        SimpleGameResult(hot: 8, cold: 554, date: "11.2021"),
        SimpleGameResult(hot: 5, cold: 55, date: "11.2021"),
        SimpleGameResult(hot: 10, cold: 54, date: "12.2021")
        ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
            Text("Горячая: ")
            TextField(
                  "ввести",
                  text: $hot
              )
                .keyboardType(.numberPad)
              .textInputAutocapitalization(.never)
              .disableAutocorrection(true)
            }
            .padding()
            
                HStack {
                Text("Холодная: ")
                TextField(
                      "ввести",
                      text: $cold
                  )
                    .keyboardType(.numberPad)
                  .textInputAutocapitalization(.never)
                  .disableAutocorrection(true)
                }
                .padding()
            
            Button("готово") {
                print("Button pressed!")
            }
            //.buttonStyle(GrowingButton())
            .padding()
                
            Divider()
            ScrollView {
            VStack {
                ForEach(results.reversed(), id: \.id) { result in
                    VStack(alignment: .leading) {
                    Text("Дата: \(result.date)")
                    HStack {
                        Text("Горячая: \(result.hot),")
                        Text("Холодная: \(result.cold)")
                    }
                        Divider()
                    }
                    .padding(.leading)
                }
            }

            }
            Spacer()
        }
    }
}

struct WaterMeterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterMeterView()
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.001 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


struct SimpleGameResult {
    let id = UUID()
    let hot: Int
    let cold: Int
    let date: String
}
