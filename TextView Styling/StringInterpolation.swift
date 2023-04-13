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

struct StringInterpolation: View {
    var body: some View {
        NavigationStack {
            let palette = Image(systemName: "paintpalette.fill").symbolRenderingMode(.multicolor)
            let introString = Text("Paint with").foregroundColor(.red)
            let largePalette = Text(palette).font(.largeTitle)
            Form {
                Section("Multiple text views") {
                    Text("\(Text("**Summer**").foregroundColor(.orange)) is a great time to visit **Vancouver**. Make sure you check out \(Text("[Grouse mountain](https://grousemountain.com)"))")
                        .tint(.green)
                }
                Section("SF Symbols") {
                    LabeledContent("One Way") {
                        HStack {
                            Text("Paint with")
                            Image(systemName: "paintpalette.fill").symbolRenderingMode(.multicolor)
                        }
                    }
                    LabeledContent("String Interpolation"){
                        Text("Paint with \(Image(systemName: "paintpalette.fill").symbolRenderingMode(.multicolor))")
                    }
                    LabeledContent("String Interpolation with style"){
                        Text("Paint with \(Text(palette).font(.largeTitle))")
                    }
                    LabeledContent("Even better") {
                        Text("\(introString) \(largePalette)")
                    }
                }
            }
            .navigationTitle("String Interpolation")
        }
    }
}

struct StringInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        StringInterpolation()
    }
}
