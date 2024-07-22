import Foundation

open class BasePresenter<S, E> {
    public var stateSignal: ((_ state: S) -> Void)?
    public var eventSignal: ((_ event: E) -> Void)?
    
    public init() { }
    
    open func loaded() { }
        
    open func updateState(_ state: S) {
        DispatchQueue.main.async {
            print("Updating State: \(state)")
            self.stateSignal?(state)
        }
    }
    
    open func emitEvent(_ event: E) {
        DispatchQueue.main.async {
            print("Updating Event: \(event)")
            self.eventSignal?(event)
        }
    }
    
    @MainActor
    open func updateMainActorState(_ state: S) {
        print("Updating Main Actor State: \(state)")
        stateSignal?(state)
    }
    
    @MainActor
    open func emitMainActorEvent(_ event: E) {
        print("Updating Main Actor Event: \(event)")
        eventSignal?(event)
    }
}
