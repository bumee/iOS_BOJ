import Foundation

let Howmany = Int(readLine()!)!
var Star = ""

for n in 1...Howmany {
    for _ in 0..<Howmany-n {
        Star += " "
    }
    for _ in 0..<n {
        Star += "*"
    }
    print(Star)
    Star = ""
}

