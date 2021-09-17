open class BasePresenter<S, E> {
        
    public var stateSignal: ((_ state: S) -> Void)?
    public var eventSignal: ((_ event: E) -> Void)?
    
    public init() { }
        
    open func loaded() { }
    
    open func updateState(_ state: S) {
        stateSignal?(state)
    }
    
    open func emitEvent(_ event: E) {
        eventSignal?(event)
    }
    
}
