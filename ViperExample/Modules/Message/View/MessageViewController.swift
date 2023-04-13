//  MessageViewController.swift

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var presenter: MessagePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialInformation()
    }
    func loadInitialInformation()  {
        presenter?.loadInitialMessage(withName: "Marcelo")
    }

    @IBAction func goToRegisterAction(_ sender: UIButton) {
        // aqui mandaremos  a llamar el nuevo modulo
    }
}
