//
//  ContentView.swift
//  @ObservedObject vs @EnvironmentObject
//
//  Created by Francesco Dal Savio on 06/01/21.
//

import SwiftUI

struct View1: View {
    @ObservedObject var observedObject = ObservableObjectExample()
    @EnvironmentObject var environmentObject: ObservableObjectExample
    
    var body: some View {
        
        NavigationView {
            VStack {
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
                NavigationLink(destination: View2(observedObject: observedObject)) {
                    Text("Show View 2")
                }
                .padding()
                .navigationTitle("View 1")
            }
        }
    }
}



