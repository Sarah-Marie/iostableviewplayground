//
//  ViewController.swift
//  ColorListTableView
//
//  Created by Sarah williamson on 6/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
    }
}
    
    extension ViewController: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "TableViewCell2") as? TableViewCell2)!
            cell.tblImage.image = UIImage(named: String(indexPath.row + 1))
            
            //Make the label in the row tappable
            cell.tblLabel.text = "Rainbows \(indexPath.row+1)"
            return cell
        }
    }
    
//    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta, .cyan]
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return rainbow.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
//        cell.backgroundColor = rainbow[indexPath.item]
//
//        //Default Content Configuration
//        var content = cell.defaultContentConfiguration()
//        content.text = rainbow[indexPath.item].accessibilityName.capitalized
//        cell.contentConfiguration = content
//        return cell
//    }


