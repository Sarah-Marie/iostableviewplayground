//
//  TableViewCell2.swift
//  ColorListTableView
//
//  Created by Sarah williamson on 7/13/22.
//

import Foundation
import UIKit

protocol TableViewNew {
    func onClickCell(index: Int)
}

class TableViewCell2: UITableViewCell {
    
    @IBOutlet weak var tblImage: UIImageView!
    @IBOutlet weak var tblLabel: UILabel!
    
    var cellDelegate: TableViewNew?
    var index: IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func onClick(_ sender: UIButton) {
        cellDelegate?.onClickCell(index: (index?.row)!)
    }

}


    
   
   
    
   
    

