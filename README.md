# StateMVP

A simple MVP architecture using states and events for binding view

## System Requirements

* Deployment target iOS 12.0+, visionOS 1.0+
* Xcode 13.0+
* Swift 5.0+

## Installation

`StateMVP` can be installed with SPM Simply add
`https://github.com/wearemadstudio/StateMVP` to your project.

## Usage

`StateMVP`is very easy to use. First, you need to create your own events and states for the desired module.

```swift
import StateMVP

enum ExampleState: BaseState {
    case active
}

enum ExampleEvent: BaseEvent {
    case updateView(_ title: String)
}
```

Then describe the presenter class

```swift
class ExampleViewPresenter: BasePresenter<ExampleState, ExampleEvent> {
    
    /* your code */
    
    override func loaded() {
        /* do anything */
        emitEvent(.updateView("Some title"))
        updateState(.active)
    }
}
```

Finally, add your view controller

```swift
class ExampleViewController: BaseViewController<ExampleState, ExampleEvent, ExampleViewPresenter> {
    
    /* your code */
    
    override func setupUI() {
        view.backgroundColor = .black
        
        /* custom setup */
    }
    
    override func update(with state: State) {
        switch state {
        case .active:
            /* do something */
        }
    }
    
    // MARK: - Handle Event
    
    override func handle(_ event: Event) {
        switch event {
        case .updateView(let title):
            /* do something */
        }
    }
}
```

That's it!

## License

`StateMVP` is released under a MIT License. See LICENSE file for details.