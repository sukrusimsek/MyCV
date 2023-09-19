//
//  DailyRoutineVC.swift
//  MyCV
//
//  Created by Şükrü Şimşek on 29.05.2023.
//

import UIKit

class DailyRoutineVC: UIViewController{
    
    var dailyRoutine = [String]()
    @IBOutlet var dailyRoutineTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dailyRoutine.append("Uyanma          4:13")
        dailyRoutine.append("Duş             4:30")
        dailyRoutine.append("Kahvaltı        5:00")
        dailyRoutine.append("Çalışma         5:45")
        dailyRoutine.append("Güç Şekerlemesi 9:00")
        dailyRoutine.append("Spor            11:00")
        dailyRoutine.append("Öğle Yemeği     13:00")
        dailyRoutine.append("Mola            14:00")
        dailyRoutine.append("Çalışma         15:30")
        dailyRoutine.append("Akşam Yemeği    18:30")
        dailyRoutine.append("Mola            19:00")
        dailyRoutine.append("Çalışma         20:00")
        dailyRoutine.append("Uyku            22:00")


        let color2 = UIColor(rgb: 0xa6ab99)
        self.view.backgroundColor = color2
        
        
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    

}
extension DailyRoutineVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyRoutine.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = dailyRoutine[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
}
