//
//  _ObservedObject_vs__EnvironmentObjectApp.swift
//  @ObservedObject vs @EnvironmentObject
//
//  Created by Francesco Dal Savio on 06/01/21.
//

import SwiftUI

@main
struct _ObservedObject_vs__EnvironmentObjectApp: App {
    var body: some Scene {
        WindowGroup {
            View1().environmentObject(ObservableObjectExample())
        }
    }
}
