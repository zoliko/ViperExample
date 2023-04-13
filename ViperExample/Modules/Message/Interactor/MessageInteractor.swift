//  MessageInteractor.swift

import Foundation

public class MessageInteractor: MessageInteractorInputProtocol {
    
    public var presenter: MessageInteractorOutputProtocol?
    
    public func requestMessage(withName name: String) {
        presenter?.responseMessage(with: createMessage(from: name))
    }
    
}

//MARK: -  MessageInteractorExtension for Data

extension MessageInteractor {
    
    func createMessage(from name: String) -> MessageEntity {
        return MessageEntity(message: name)
    }
}
