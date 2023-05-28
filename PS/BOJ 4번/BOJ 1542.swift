import Foundation

let HowManyScore = Int(readLine()!)!

let RealScoreList = readLine()!.split(separator: " ").map{Double($0)!}

let total = RealScoreList.map{ ($0*100/RealScoreList.max()!) }.reduce(0,+)

print(total/Double(RealScoreList.count))
