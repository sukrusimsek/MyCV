//
//  ViewController.swift
//  MyCV
//
//  Created by Şükrü Şimşek on 26.05.2023.
//

import UIKit

class ViewController: UIViewController { //Home Page

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDeveloper: UILabel!
    @IBOutlet weak var lbliOS: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color1 = UIColor(rgb: 0xEEF5DB)
        let color2 = UIColor(rgb: 0xd6dcc5)
        let color3 = UIColor(rgb: 0x8e9383)
        let advicebuttoncolor = UIColor(rgb: 0xf5efdb)
        self.view.backgroundColor = color1
        
        profileImg.image = UIImage(named:"IMG_2257.jpg")
        //profileImg.frame = CGRect(x: 10, y: 25, width: 50, height: 50)
        profileImg.layer.cornerRadius = profileImg.frame.height / 2.5
        profileImg.clipsToBounds = true
        
        self.tabBarController?.tabBar.backgroundColor = color2
        self.tabBarController?.tabBar.tintColor = color3
        tabBarController?.tabBar.unselectedItemTintColor = color1
        
        let adviceButton = UIButton()
        adviceButton.frame = CGRect(x: 190, y: 80, width: 125, height: 45)
        adviceButton.layer.cornerRadius = 5
        adviceButton.clipsToBounds = true
        adviceButton.tintColor = advicebuttoncolor
        adviceButton.backgroundColor = color3
        adviceButton.setTitle("Tavsiye Ver", for: .normal)
        adviceButton.addTarget(self, action: #selector(self.buttonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(adviceButton)
        
        
        
        let image = UIImage(named: "mydailyroutine.png")
        let button = UIButton()
        button.frame = CGRect(x: 10, y: 251, width: 370, height: 222)
        button.layer.cornerRadius = 50
        button.clipsToBounds = true
        button.setBackgroundImage(image, for: .normal)
        button.addTarget(self, action: #selector(self.imageButtonTapped(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    @objc func imageButtonTapped(_ sender:UIButton!){
        //print("Button tapped buraya segue ekle")
        performSegue(withIdentifier: "toDailyRoutine", sender: nil)
        
        
    }
    @objc func buttonTapped(_ sender:UIButton!){
        //print("Tavsiye butonuna basıldı. Tavsiye sayfasına segue oluştur.")
        performSegue(withIdentifier: "toFeedBackPage", sender: nil)
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDailyRoutine" {
            if let destinationVC = segue.destination as? DailyRoutineVC {
                
            } bu kısım sadece data gönderimi gibi işlemlerde kullanırız.
        } */

}

extension UIColor { //Hex Code Settings
    convenience init(red: Int, green: Int, blue: Int) {
           assert(red >= 0 && red <= 255, "Invalid red component")
           assert(green >= 0 && green <= 255, "Invalid green component")
           assert(blue >= 0 && blue <= 255, "Invalid blue component")

           self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
       }

       convenience init(rgb: Int) {
           self.init(
               red: (rgb >> 16) & 0xFF,
               green: (rgb >> 8) & 0xFF,
               blue: rgb & 0xFF
           )
       }
    }




