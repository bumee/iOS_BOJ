import Foundation

if let word = readLine() {
    print(word[String.Index(encodedOffset: Int(readLine()!)!-1)])
}
