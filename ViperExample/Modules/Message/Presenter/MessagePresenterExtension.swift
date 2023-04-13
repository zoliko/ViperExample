//  MessagePresenterExtension.swift

import Foundation

//MARK: -  MessageInteractorOutputProtocol
extension MessagePresenter: MessageInteractorOutputProtocol {
    
    public func responseMessage(with message: MessageEntity) {
        view?.showMessage(with: message)
    }
}
