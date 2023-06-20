import Foundation

if let ch = readLine() {
    print(Int(UnicodeScalar(ch)!.value))
}
