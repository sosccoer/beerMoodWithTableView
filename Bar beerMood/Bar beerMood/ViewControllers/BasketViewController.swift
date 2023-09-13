//
//  BasketViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 24.06.23.
//

import UIKit

class BasketViewController: UIViewController {

    
    @IBOutlet weak var todaySallaryLabel: UILabel!
    
    @IBOutlet weak var totalSallaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateSallaries()
    }
        
    
    
    @IBAction func newStuffAction(_ sender: UIButton) {
        BarManager.sharedInfo.newDay()
        updateSallaries()
    }
    
    @IBAction func beZero(_ sender: UIButton) {
        BarManager.sharedInfo.resetAll()
        updateSallaries()
    }
    
    func updateSallaries (){
        
        todaySallaryLabel.text = "Выручка сегодня: \(BarManager.sharedInfo.todaySallary)р."
        totalSallaryLabel.text = "Выручка всего: \(BarManager.sharedInfo.totalSallary)р."
        
    }
    
}
