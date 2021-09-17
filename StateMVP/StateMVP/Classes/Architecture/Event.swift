public protocol BaseEvent { }

public protocol EventHandler {
    associatedtype Event: BaseEvent
    func handle(_ event: Event)
}
