//
//  TabbarController.swift
//  MyCV
//
//  Created by Şükrü Şimşek on 29.05.2023.
//

import UIKit

class TabbarController: UITabBarController {
    @IBInspectable var initialIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex //InitialIndex bize hangi tab den açılacağını belirleme de yardımcı oldu.
        //self.view.backgroundColor = UIColor(red: 155/255.0, green: 220/255.0, blue: 175/255.0, alpha: 10)
        let color1 = UIColor(rgb: 0xEEF5DB)
        self.view.backgroundColor = color1
        
        let color2 = UIColor(rgb: 0x777a6d)
        let color3 = UIColor(rgb: 0x474941)
        
        tabBarController?.tabBar.barTintColor = color2
        tabBarController?.tabBar.tintColor = color3
        
    }
    


}
