//
//  UpdateViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 28.06.23.
//

import UIKit

class UpdateViewController: UIViewController {

    @IBOutlet weak var GitHub: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gitImage = UIImage(named: "github icon")
        GitHub.setImage(gitImage, for: .normal)
        
        
    }
    

    
    @IBAction func gitBub(_ sender: Any) {
        
       guard let url = URL(string: "https://github.com/sosccoer/Bar-beerMood") else {return}
        UIApplication.shared.open(url)
        
    }
    
}
