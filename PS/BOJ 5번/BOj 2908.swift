import Foundation

if let twoVariables = readLine() {
    let reversed_twoVariables = twoVariables.split(separator: " ").map{ String($0).reversed() }.map{ Int(String($0)) }
    print(reversed_twoVariables[0]! > reversed_twoVariables[1]! ? reversed_twoVariables[0]! : reversed_twoVariables[1]!)
}
