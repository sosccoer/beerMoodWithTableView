//
//  BeerType.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 26.06.23.
//

import Foundation

struct Beer {
    
    let name: String
    let country: String
    let colorType: BeerType
    let price: (Decimal,Decimal,Decimal)
    var volume: Decimal
    let photo: PhotoBeer
    
}

enum BeerType{
    case light
    case dark
}

enum PhotoBeer {
    case lidscaePshenichnae
    case vetcherVBrugge
    case lidskaeHoppyLager
    case lidscaePremium
    case lidskaePorter
    case lidslaePilsner
    case koronetPubDraught
    case koronetStoutOriginal
    case garageLemonDrink
    case koronetLager
    case warsteinerLightPilsner
    case warsteinerPremiumBeer
    case alivariaZolotoe
    case alivariaBeloeZoloto
    case baltikaMygkoe
    
}
