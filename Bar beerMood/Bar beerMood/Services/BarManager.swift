//
//  BarManager.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 4.07.23.
//

import Foundation

public class BarManager {
    
   public static var sharedInfo = BarManager()
    
    private init() { }

     let initialBeers: [Beer] = [
    Beer(name: "Лидскае Пшеничное",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .lidscaePshenichnae),
    
    Beer(name: "Лидскае Вечер в Брюгге",
         country: "🇧🇾",
         colorType: .dark,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .vetcherVBrugge),
    
    Beer(name: "Лидскае Hoppy Lager",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .lidskaeHoppyLager),
    
    Beer(name: "Лидскае Premium",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .lidscaePremium),
    
    Beer(name: "Лидскае Портер",
         country: "🇧🇾",
         colorType: .dark,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .lidskaePorter),
    
    Beer(name: "Лидскае Pilsner",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .lidslaePilsner),
    
    Beer(name: "Koronet PUB Draught",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .koronetPubDraught),
    
    Beer(name: "Koronet Stout Original",
         country: "🇧🇾",
         colorType: .dark,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .koronetStoutOriginal),
    
    Beer(name: "Garage Lemon drink",
         country: "🇷🇺",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .garageLemonDrink),
    
    Beer(name: "Koronet Lager",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .koronetLager),
    
    Beer(name: "Warsteiner Light Pilsner",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .warsteinerLightPilsner),
    
    Beer(name: "Warsteiner Premium Beer",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .warsteinerPremiumBeer),
    
    Beer(name: "Аливария Золотое",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .alivariaZolotoe),
    
    Beer(name: "Аливария Белое золото",
         country: "🇧🇾",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .alivariaBeloeZoloto),
    
    Beer(name: "Балтика Мягкое",
         country: "🇷🇺",
         colorType: .light,
         price: (1.5, 2, 3),
         volume: 100,
         photo: .baltikaMygkoe)
]
    
    var beers:[Beer] = []
    
    var totalSallary : Decimal = 0
    var todaySallary: Decimal = 0
    
    func pricesForBeer(with index: Int) ->(Decimal,Decimal,Decimal) {beers[index].price}
    
    func buyBeer(with index: Int, volume: Decimal) {
        
        beers[index].volume -= volume
        
        switch volume {
        
        case 0.33: todaySallary += beers[index].price.0
            
        case 0.5: todaySallary += beers[index].price.1
            
        case 1: todaySallary += beers[index].price.2
            
        default: return
            
        }
        
    }
    
    func newDay() {
        totalSallary += todaySallary
        todaySallary = 0
    }
    
    func resetAll() {
        beers = initialBeers
        todaySallary = 0
        totalSallary = 0
        beers = initialBeers
        
    }
    
}
