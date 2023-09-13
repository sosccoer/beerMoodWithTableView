//
//  ViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 5.07.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var beerButons: [UIButton]!
    
    @IBOutlet var beerNames: [UILabel]!
    
    @IBOutlet var beerVolumes: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        completeBeers()
        BarManager.sharedInfo.resetAll()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        completeBeers()
    }
    
    func completeBeers(){
        for index in 0..<BarManager.sharedInfo.beers.count{
            
            beerNames[index].text = "\(BarManager.sharedInfo.beers[index].name) \(BarManager.sharedInfo.beers[index].country)"
            
            beerVolumes[index].text = "\(BarManager.sharedInfo.beers[index].volume) л."
        }
    }
    
    @IBAction func goToDetails(sender: UIButton) {
        
        guard let destinationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutBeer") as? AboutBeerViewController else {return}
        
        let beerIndex = sender.tag
        destinationController.beerIndex = beerIndex
        navigationController?.pushViewController(destinationController, animated: true)
    }
    

}
