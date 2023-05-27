import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var idx: Int
    
    //init 메소드를 사용하여 태초부터 파일을 처음부터 끝까지 불러오고, 그걸 Uint8 List인 buffer에 저장한다.
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(try! fileHandle.readToEnd()!) + CollectionOfOne(0)
        idx = 0
    }
    
    //inline 메소드를 사용하여, 함수 호출 오버헤드를 줄여 실행 시간에 최적화를 부여한다.
    @inline(__always) private func read() -> UInt8 {
        ///defer의 경우 코드 블럭이 다 끝나고 나가기 직전 호출되는 구문이다. 이 때, index를 1씩 증가하게 된다.
        defer { idx += 1 }
        
        ///UnsafeBufferPointer를 사용하여, 안에 있는 클로저의 실행이 끝나면 자동으로 소멸되는 포인터를 생성한다.
        return buffer.withUnsafeBufferPointer { $0[idx] }
    }
    
    //inline 메소드를 사용하여, readInt!
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        
        /// 공백 (ASCII == 10) && 줄바꿈 (ASCII == 32) 일때, 무시하고 다음 것 읽어!
        while now == 10 || now == 32 { now = read() }
        
        /// 0~9 아스키코드 범위 내에 들어오면? 10진수로 쌓아야 하니까 10씩 곱하면서 일의자리 추가!
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }
        
        ///고대로 리턴 ~
        return sum
    }
}

let fileIO = FileIO()
let n = fileIO.readInt()
for _ in 0..<n {
    print(fileIO.readInt() + fileIO.readInt())
}
