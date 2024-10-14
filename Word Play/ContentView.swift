//
//  ContentView.swift
//  Word Play
//
//  Created by Tsolmon Batjargal on 10/2/24.
//

import SwiftUI

struct Words {
    var adjective0 = ""
    var animal0 = ""
    var animal1 = ""
    var noun0 = ""
    var adjective1 = ""
    var noun1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var noun2 = ""
}
struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "animal", variable: $words.animal0)
                }
                HStack{
                    CustomTextField(placeholder: "animal", variable: $words.animal1)
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                }
                HStack{
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                HStack{
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
            .navigationTitle("Word Play")
        }
    }
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField (placeholder , text: variable)
            .textFieldStyle(.roundedBorder)
            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
    }
}
#Preview {
    ContentView()
}
