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
