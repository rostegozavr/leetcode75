
class MyQueue {
    var stack1 = Stack<Int>()
    var stack2 = Stack<Int>()

    init() {
    }
    
    func push(_ x: Int) {
        while !stack1.isEmpty {
          stack2.push(stack1.pop()!)
        }
        stack2.push(x)
        while !stack2.isEmpty {
          stack1.push(stack2.pop()!)
        }
    }
    
    func pop() -> Int {
        stack1.pop()!
    }
    
    func peek() -> Int {
        stack1.peek()!
    }
    
    func empty() -> Bool {
        stack1.isEmpty
    }

    class Stack<T> {
        private var items: [T] = []
        var isEmpty: Bool {
            items.isEmpty
        }

        init() {
        }
        
        func peek() -> T? {
            items.last
        }
        
        func push(_ value: T) {
            items.append(value)
        }
        
        func pop() -> T? {
            items.removeLast()
        }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */