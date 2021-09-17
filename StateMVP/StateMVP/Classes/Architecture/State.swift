public protocol BaseState { }

public protocol StateUpdatable {
    associatedtype State: BaseState
    func update(with state: State)
}
