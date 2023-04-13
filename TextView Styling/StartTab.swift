//
// Created for TextView Styling
// by  Stewart Lynch on 2023-04-11
// Using Swift 5.0
// Running on macOS 13.3
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct StartTab: View {
    var body: some View {
        TabView {
            MarkDown()
                .tabItem {
                    Label("MarkDown", systemImage: "1.circle.fill")
                }
            StringInterpolation()
                .tabItem {
                    Label("String Interpolation", systemImage: "2.circle.fill")
                }
            AttributedStrings()
                .tabItem {
                    Label("AttributedStrings", systemImage: "3.circle.fill")
                }
        }
    }
}

struct StartTab_Previews: PreviewProvider {
    static var previews: some View {
        StartTab()
    }
}
