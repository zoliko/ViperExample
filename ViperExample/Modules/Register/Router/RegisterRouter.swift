//
//  RegisterRouter.swift
//  ViperExample
//
//  Created by Marcelo Aguilar Bravo on 13/04/23.
//

import UIKit

typealias RegisterPresenterProtocols = RegisterPresenterProtocol & RegisterInteractorOutputProtocol

public class RegisterRouter: RegisterRouterProtocol {
    
    public static func createModule() -> UIViewController {
        
    // Obtenemos la instancia
        
        let moduleView = RegisterViewController()
        moduleView.modalPresentationStyle = .fullScreen //LINEA OPCIONAL PARA ESTAR MODO PANTALLA COMPLETA
        
    // Configuracion de Viper
        
        let presenter: RegisterPresenterProtocols  = RegisterPresenter()
        moduleView.presenter = presenter
        moduleView.presenter?.view = moduleView
        moduleView.presenter?.route = RegisterRouter()
        moduleView.presenter?.interactor = RegisterInteractor()
        moduleView.presenter?.interactor?.presenter = presenter
        return moduleView
        
    }
    
}
