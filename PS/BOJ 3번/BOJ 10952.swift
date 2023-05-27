import Foundation

while true {
    let ints = readLine()!.split(separator: " ").map {Int(String($0))!}
    let intA = ints[0]
    if intA == 0{
        break
    }
    let intB = ints[1]
    
    print(intA+intB)
}
