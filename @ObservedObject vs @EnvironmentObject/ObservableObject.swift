//
//  SwiftUIView.swift
//  @ObservedObject vs @EnvironmentObject
//
//  Created by Francesco Dal Savio on 06/01/21.
//

import SwiftUI

class ObservableObjectExample: ObservableObject {
    @Published var string = "🥇"
    
    func changeString() {
        self.string = "🥈"
    }
}


