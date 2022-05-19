//
//  ContentView.swift
//  MacHide
//
//  Created by Quinn Bellmore on 2022-05-19.
//

import SwiftUI
import Cocoa
import Foundation
@discardableResult
func shell(_ args: String...) -> Int32 {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}

struct ContentView: View {
    var body: some View {
        Button(action: {
            shell("ls -a")
        }) {
        Text("Hide Icons")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
