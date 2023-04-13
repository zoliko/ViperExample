//  MessageViperProtocols.swift

import UIKit

//MARK: -  MessageInteractorOutputProtocol

public protocol MessageInteractorOutputProtocol: AnyObject {
    
    //Funcionalities
    
    func responseMessage(with message: MessageEntity)
}
//MARK: -  MessageRouterProtocol

public protocol MessageRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
    
}
//MARK: -  MessageInteractorInputProtocol

public protocol MessageInteractorInputProtocol: AnyObject {
    var presenter:  MessageInteractorOutputProtocol? {get set}
    
    //Funcionalities
    
    func requestMessage(withName name: String)
}
//MARK: -  MessageViewProtocol

public protocol MessageViewProtocol: AnyObject {
    
    //Funcionalities
    
    func showMessage(with message: MessageEntity)
    
}
//MARK: -  MessagePresenterProtocol

public protocol MessagePresenterProtocol: AnyObject {
    var view:  MessageViewProtocol? {get set}
    var interactor: MessageInteractorInputProtocol? {get set}
    var route: MessageRouterProtocol? {get set}
    
    //Funcionalities
    
    func loadInitialMessage(withName name: String)
    
}
