//
//  NavStack1.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI

struct NavStack1: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("This is screen number 1") {
                    Text("Go to screen 1")
                }
                Spacer().frame(height: 10)
                NavigationLink("This is screen number 2") {
                    Text("Go to screen 2")
                }
            }
        }
    }
}

struct NavStack1_Previews: PreviewProvider {
    static var previews: some View {
        NavStack1()
    }
}
