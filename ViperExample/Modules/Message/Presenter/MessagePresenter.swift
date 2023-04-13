//  MessagePresenter.swift

import Foundation

public class MessagePresenter: MessagePresenterProtocol {
    
    weak public var view: MessageViewProtocol?
    public var interactor: MessageInteractorInputProtocol?
    public var route: MessageRouterProtocol?
    
    public func loadInitialMessage(withName name: String) {
        interactor?.requestMessage(withName: name)
    }
    
}
