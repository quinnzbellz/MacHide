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
    task.launchPath = "/bin/bash"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}

struct ContentView: View {
    var body: some View {
        Button(action: {
            shell("cd ~/Desktop ")
            shell("for file in *; do mv ${file} `echo $file | tr ' ' '_'` ; done")
            shell("for file in *;  mv $file ~/Desktop/.${file%%}")
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
