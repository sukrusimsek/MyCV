//
//  FeedBackVC.swift
//  MyCV
//
//  Created by Şükrü Şimşek on 29.05.2023.
//

import UIKit

class FeedBackVC: UIViewController,UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color1 = UIColor(rgb: 0xEEF5DB)
        self.view.backgroundColor = color1
        
        
        let textField = UITextField(frame: CGRect(x: 100, y: 271, width: 214, height: 34))
        textField.placeholder = "Tavsiyenizi Giriniz"
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        textField.delegate = self
        
        /* func textFieldDidEndEditing(_ textField: UITextField){
            if let text = textField.text{
            print("Textfield değeri : \(text)")
            }
        }*/
        
        
        
        let giveFeedbackButton = UIButton()
        giveFeedbackButton.setTitle("Tavsiye Ver", for: .normal)
        giveFeedbackButton.frame = CGRect(x: 100, y: 360, width: 213, height: 46)
        giveFeedbackButton.layer.cornerRadius = 5
        giveFeedbackButton.clipsToBounds = true
        giveFeedbackButton.tintColor = .blue
        giveFeedbackButton.backgroundColor = .brown
        giveFeedbackButton.addTarget(self, action: #selector(self.giveButtonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(giveFeedbackButton)
        
        
    }
    
    @objc func giveButtonTapped(_ sender:UIButton){
        //print("Tavsiye ver bildirim ekle, titreşim ekle")
        let alert = UIAlertController(title: "Mesaj İletildi", message: "Tavsiyeniz İçin Teşekkürler", preferredStyle: .alert)
        let action = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
    }

}
