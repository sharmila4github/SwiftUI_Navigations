//
//  NavStack7.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI
//Example of navigation stack with list without using navigation destination
struct PlayerView: View {
    let name: String
    var body: some View {
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}
struct NavStack7: View {
  
        let players = [
            "Roy Kent",
            "Richard Montlaur",
            "Dani Rojas",
            "Jamie Tartt",
        ]
        var body: some View {
            NavigationStack {
                List(players, id: \.self) { player in
                    NavigationLink {
                        PlayerView(name: player)
                    } label: {
                        Text(player)
                    }
                }
                .navigationTitle("Select a player")
            }
        }
    }

struct NavStack7_Previews: PreviewProvider {
    static var previews: some View {
        NavStack7()
    }
}
