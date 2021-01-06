//
//  View2.swift
//  @ObservedObject vs @EnvironmentObject
//
//  Created by Francesco Dal Savio on 06/01/21.
//

import SwiftUI

struct View2: View {
    @ObservedObject var observedObject: ObservableObjectExample
    @EnvironmentObject var environmentObject: ObservableObjectExample
    
    var body: some View {
        VStack {
            Text("Environment Object")
            Text(environmentObject.string)
                .padding()
            Button("Change", action: {
                environmentObject.changeString()
            }).padding().foregroundColor(.white)
        }
        .frame(width: 250)
        .background(Color.red)
        VStack {
            Text("Observed Object")
            Text(observedObject.string)
                .padding()
            Button("Change", action: {
                observedObject.changeString()
            }).padding().foregroundColor(.white)
        }
        .frame(width: 250)
        .background(Color.blue)
        Spacer()
            .navigationTitle("View 2")
    }
}


