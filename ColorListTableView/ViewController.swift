//
//  ViewController.swift
//  ColorListTableView
//
//  Created by Sarah williamson on 6/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.backgroundColor = rainbow[indexPath.item]
        
        //Default Content Configuration
        var content = cell.defaultContentConfiguration()
        content.text = rainbow[indexPath.item].accessibilityName.capitalized
        cell.contentConfiguration = content
        return cell
    }
}

