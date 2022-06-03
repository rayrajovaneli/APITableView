//
//  TableViewCell.swift
//  APITableView
//
//  Created by user218260 on 6/2/22.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func setup(value: Character){
        self.labelName.text = value.name
        self.labelName.adjustsFontSizeToFitWidth = true
        let url = extractImage(data: value.thumbnail)
        self.myImage.sd_setImage(with: url)
    }
    
    func extractImage(data: [String:String]) -> URL? {
        let path = data["path"] ?? ""
        let ext = data["extension"] ?? ""
        return URL(string: "\(path).\(ext)")
    }
    
}
