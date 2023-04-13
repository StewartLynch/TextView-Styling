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

struct AttributedStrings: View {
    var body: some View {
        var myString: AttributedString {
            var myString = AttributedString("Important Information")
            myString.foregroundColor = .red
            myString.backgroundColor = .yellow
            myString.underlineStyle = .single
            return myString
        }
        let swiftUI = highlight("SwiftUI")
        let uiKit = highlight("UIKit", color: .pink.opacity(0.4))
        NavigationStack {
            VStack {
                Form {
                    Section("Basic") {
                        Text("Attributed strings are character strings that have attributes for individual characters or ranges of characters. Attributes provide traits like visual styles for display, accessibility for guided access, and hyperlink data for linking between data sources.")
                            .font(.caption)
                        Text(myString)
                        Text("This is \(myString) so make sure you read it.")
                        Text("Do you use \(swiftUI) or \(uiKit)? in your code")
                    }
                    Section("Advanced") {
                        Text(checkerBoard("Checkmate"))
                            .border(.black)
                    }
                }
                
            }
            .navigationTitle("AttributedString")
        }
    }
    func highlight(_ string: String, color: Color = .yellow) -> AttributedString {
        var myString = AttributedString(string)
        myString.backgroundColor = color
        myString.underlineStyle = .single
        return myString
    }
    
    func checkerBoard(_ string: String) -> AttributedString {
        var result = AttributedString()
        for (index, letter) in string.enumerated() {
            var letterString = AttributedString(String(letter))
            letterString.backgroundColor = index % 2 == 0 ? .white : .black
            letterString.foregroundColor = index % 2 == 0 ? .black : .white
            result += letterString
        }
        result.font = .monospacedSystemFont(ofSize: 40, weight: .bold)
        return result
    }
}

struct AttributedStrings_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStrings()
    }
}
