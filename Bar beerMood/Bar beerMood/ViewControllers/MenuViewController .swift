//
//  MenuViewController .swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 13.09.23.
//

import Foundation
import UIKit

class MenuViewContoller: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        setupTableView()
    }
    
    private func setupTableView () {
        
        registerCells()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    private func registerCells() {
        
        let menuNib = UINib(nibName: "BeerTableViewCell", bundle: Bundle.main)
        tableView.register(menuNib, forCellReuseIdentifier: "BeerTableViewCell")
        
    }

    
    
}

extension MenuViewContoller: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        BarManager.sharedInfo.initialBeers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerTableViewCell", for: indexPath) as! BeerTableViewCell
            
        let index = indexPath.row
            
        cell.nameOfBeer.text = BarManager.sharedInfo.initialBeers[index].name
        cell.valueOfBeer.text = "\(BarManager.sharedInfo.initialBeers[index].volume)"
        
            
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let destinationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutBeer") as? AboutBeerViewController else {return}
        
        let beerIndex = indexPath.row
        destinationController.beerIndex = beerIndex
        present(destinationController,animated: true)
    }
    
    
}
