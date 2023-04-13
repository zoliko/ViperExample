//
//  InicialViewController.swift
//  ViperExample
//
//  Created by Marcelo Aguilar Bravo on 12/04/23.
//

import UIKit

class InicialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func goToMessageModule(_ sender: UIButton) {
        
        let newView = MessageRouter.createModule()
        self.present(newView, animated: true)
        
    }
    
}
