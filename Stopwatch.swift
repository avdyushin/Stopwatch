import QuartzCore


/**
    ⏱ The `Stopwatch` helps to measuring elapsed time
    between start and stop function calls.
 
    - Author: Grigory Avdyushin (avdyushin.g@gmail.com)
*/
class Stopwatch {
    
    private var startTime: CFTimeInterval = 0.0
    
    /**
        Initializer (will start measuring).
    */
    init() {
        restart()
    }
    
    /**
        Restart measuring.
     */
    func restart() {
        startTime = CACurrentMediaTime()
    }
    
    /**
        Returns elapsed CPU time since Stopwatch object was created.
        - returns: Elasped CPU time in seconds since Stopwath object was created
    */
    func elaspedTime() -> CFTimeInterval {
        let endTime = CACurrentMediaTime()
        return endTime - startTime
    }
    
}

extension Stopwatch: CustomStringConvertible {
    var description: String { return NSString(format: "[%0.4f s]", self.elaspedTime()) as String }
}

