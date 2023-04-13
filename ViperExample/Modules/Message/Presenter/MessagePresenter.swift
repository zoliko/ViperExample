//  MessagePresenter.swift

import Foundation

public class MessagePresenter: MessagePresenterProtocol {
    
    weak public var view: MessageViewProtocol?
    public var interactor: MessageInteractorInputProtocol?
    public var route: MessageRouterProtocol?
    
    public func loadInitialMessage(withName name: String) {
        interactor?.requestMessage(withName: name)
    }
    
    public func goToModuleRegister() {
        guard let moduleView = view as? MessageViewController else { return  }
        let nextView = RegisterRouter.createModule()
        route?.goTo(view: nextView, from: moduleView)
    }
}
