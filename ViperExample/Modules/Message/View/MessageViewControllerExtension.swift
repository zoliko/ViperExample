//  MessageViewControllerExtension.swift

import Foundation

//MARK: -  MessageViewProtocol
extension MessageViewController: MessageViewProtocol {
    
    func showMessage(with message: MessageEntity) {
        messageLabel.text = message.message
    }
}
