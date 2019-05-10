//
//  CategoryCell.swift
//  Online-Store_App
//
//  Created by Kafkas Baranseli on 10/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    // 001 custom IBOutlets
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
    
   
}
