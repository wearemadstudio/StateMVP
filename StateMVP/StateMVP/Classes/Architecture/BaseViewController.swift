import Foundation
import UIKit

open class BaseViewController<S, E, P>: UIViewController, StateUpdatable, EventHandler
where S: BaseState, E: BaseEvent, P: BasePresenter<S, E>
{
    public typealias State = S
    public typealias Event = E
        
    public var presenter: P!
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.stateSignal = { [weak self] state in
            self?.update(with: state)
        }
        presenter.eventSignal = { [weak self] event in
            self?.handle(event)
        }
        presenter.loaded()
    }
    
    open func setupUI() { }
    
    open func handle(_ event: Event) { }
    open func update(with state: State) { }
}
