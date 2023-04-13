//
//  RegisterViperProtocols.swift
//  ViperExample
//
//  Created by Marcelo Aguilar Bravo on 13/04/23.

import UIKit

//MARK: -  RegisterInteractorOutputProtocol

public protocol RegisterInteractorOutputProtocol: AnyObject {
    
}
//MARK: -  RegisterRouterProtocol

public protocol RegisterRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
    
}
//MARK: -  MessageInteractorInputProtocol

public protocol RegisterInteractorInputProtocol: AnyObject {
    var presenter:  RegisterInteractorOutputProtocol? {get set}
}
//MARK: -  RegisterViewProtocol

public protocol RegisterViewProtocol: AnyObject {
      
}
//MARK: -  MessagePresenterProtocol

public protocol RegisterPresenterProtocol: AnyObject {
    var view:  RegisterViewProtocol? {get set}
    var interactor: RegisterInteractorInputProtocol? {get set}
    var route: RegisterRouterProtocol? {get set}    
}
