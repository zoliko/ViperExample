//
//  RegisterViewController.swift
//  ViperExample
//
//  Created by Marcelo Aguilar Bravo on 13/04/23.
//
import UIKit

class RegisterViewController: UIViewController {

    var presenter: RegisterPresenterProtocol?
    //UI Elemets

    public lazy var textField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.placeholder = "example Text"
        textField.tintColor = .blue
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    func setupUI() {
        view.backgroundColor = .blue
        self.view.addSubview(textField)
        NSLayoutConstraint.activate([textField.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
                                     textField.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor)])
    }
    
    // viewcontroller life
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
