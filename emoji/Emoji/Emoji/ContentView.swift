//
//  ContentView.swift
//  Emoji
//
//  Created by Olivia Laurel on 6/14/24.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🍵 = "🍵"
    case 🌸 = "🌸"
    case 🤍 = "🤍"
    case 🪴 = "🪴"
}

struct ContentView: View {
    
    //State: when the state for selection changes it re-renders the view
    //So when a new emoji is picked the new emoji will be on screen
    @State private var selection: Emoji = .🍵
    
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size:150))
                
                //Picker: allows users to select a value from a list of options
                //Binded to State because of $selection
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("!emoji!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
