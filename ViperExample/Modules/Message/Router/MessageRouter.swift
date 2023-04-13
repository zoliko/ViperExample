//  MessageRouter.swift

import UIKit

typealias MessagePresenterProtocols = MessagePresenterProtocol & MessageInteractorOutputProtocol

public class MessageRouter: MessageRouterProtocol {

    public static func createModule() -> UIViewController {
        
    // Obtenemos la instancia
        
        guard let moduleView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IDMessageViewController") as? MessageViewController
        else {
            return UIViewController()
        }
        
        moduleView.modalPresentationStyle = .fullScreen //LINEA OPCIONAL PARA ESTAR MODO PANTALLA COMPLETA
        
    // Configuracion de Viper
        
        let presenter: MessagePresenterProtocols  = MessagePresenter()
        moduleView.presenter = presenter
        moduleView.presenter?.view = moduleView
        moduleView.presenter?.route = MessageRouter()
        moduleView.presenter?.interactor = MessageInteractor()
        moduleView.presenter?.interactor?.presenter = presenter
        return moduleView
    }
    
    public func goTo(view nextView: UIViewController, from preView: UIViewController) {
        preView.present(nextView, animated: true)
    }
    
    
}
