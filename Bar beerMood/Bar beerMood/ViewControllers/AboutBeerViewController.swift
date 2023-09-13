//
//  AboutBeerViewController.swift
//  Bar beerMood
//
//  Created by lelya.rumynin@gmail.com on 24.06.23.
//

import UIKit

class AboutBeerViewController: UIViewController {

    
    @IBOutlet weak var photoOfBeer: UIImageView!
    @IBOutlet weak var VolumeLabel: UILabel!
    
    @IBOutlet weak var buyBeer: UIButton!
    @IBOutlet weak var textAboutBeer: UILabel!
    @IBOutlet weak var volumeSegmentControl: UISegmentedControl!
    @IBOutlet weak var priceLabel: UILabel!
    
    var parentController: MenuViewContoller!
    var beerIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BarManager.sharedInfo.beers = BarManager.sharedInfo.initialBeers
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fillDefaultValues()
        
    }
    
    
    
    private func fillDefaultValues () {
        
        let currentBeer = BarManager.sharedInfo.initialBeers[beerIndex]
        
        title = "\(currentBeer.name) \(currentBeer.country)"
            
        
        
        
        
        
        let textlidskoeLove = "Описание: Светлое нефильтрованное пиво, которое производится по особой технологии тройного сбраживания. Благодаря этому продукт имеет пышную пену и мягкий пшеничный вкус с ярко выраженными фруктовыми нотами банана и гвоздики. \nАромат и вкус: Классический немецкий нефильтрованный вайцен (пшеничное пиво) с ярко враженными бананово-коричными и цитрусово-гвоздичными ароматами."
        let textlidskaeVecher = "Описание: Первое пиво в линейке КАЛЕКЦЫЯ МАЙСТРА, которое выпускается с 2014 года. Это тёмное пиво с лёгким вишнёвым оттенком и выразительным ароматом. Продукт имеет приятный, мягкий вкус с насыщенными тонами вишни, дополненными сладостью карамели и лёгкой хмельной горечью. \nАромат и вкус: Темный лагер с мягкой вишнево-карамельной ноткой в послевкусии, с фруктово-медовым ароматом "
        let textliskaeLager = "Описание: Светлый лагер выделяется среди других представителей этого вида пива уникальными характеристиками: оригинальным сочетанием ароматных хмелей и применением технологии сухого охмеления.Благодаря оригинальному сочетанию ароматных хмелей (американский SABRO и австралийский ELLA), пиво демонстрирует яркий букет цитрусовых (SABRO) и цветочных (ELLA) тонов, дополненных легкой солодовой сладостью и травяными нюансами. Технология сухого охмеления dry-hopping technique позволяет насытить пиво ярким хмелевым ароматом. Продукт имеет привлекательный золотистый цвет, обладает лёгкостью, освежающей питкостью и раскрывается мягкими зерновыми нотками и деликатной горчинкой в послевкусии. \nАромат и вкус: Легкое, светлое, охмеленное пиво с ярким хмелевым сладко-солодовым ароматом, с выраженными цветочно-фруктово-медовыми нотками."
        let textlidskaePremium = "Описание: Легкий ароматный лагер золотистого цвета с пышной пеной и мягким вкусом. Тонкая горчинка — отличительная черта сорта «ЛІДСКАЕ Premium». В составе — душистый немецкий хмель, отборный солод и дрожжи, которые используют для приготовления премиальных сортов пива. «ЛІДСКАЕ Premium» бродит при более низких температурах и дольше, чем при классической технологии. Благодаря этому в пиве появляется горчинка и мягкое послевкусие. Сорт создавали вместе с финскими пивоварами. «ЛІДСКАЕ Premium» появилось в 2009 г. В 2016 г. лагер получил в Бельгии Crystal Taste Award, «Оскар» в мире пивоварения. Премию дают брендам, которые становились лауреатами Superior Taste Award («За превосходный вкус») три года подряд и завоевали три звезды. \nАромат и вкус: Классический лагер с легкой горчинкой и хлебно-соловым послевкусием."
        let textlidskaePorter = "Описание: Тёмное пиво с глубоким карамельным вкусом и выраженным ароматом. Раньше этот плотный, насыщенный сорт варили на зимние праздники, к Рождеству и Новому году. Теперь «Лидское пиво» выпускает портер круглый год.\nАромат и вкус: Легкий аромат с оттенком шоколада, карамели и инжира. Шоколадно-хлебный вкус."
        let textlidskaePilsner = "Описание: Пилснер – чешский вариант лагера, наиболее распространенного в мире пива. Лидский Pilsner – светлый лагер с легкой горчинкой. Сорт продолжает традицию западнобелорусских пивоваров, которые варили пилснер ароматным, но с меньшей горчинкой, чем в классическом варианте.\nАромат и вкус: Освежающее светлое пиво с легким ячменным послевкусием."
        let textkoronetPUB = "Описание: Европейский светлый лагер, мягкий и свежий вкус которого обеспечивается использованием технологии двойного охмеления (double hopping) с применением различных сортов: тетрафреша и саазского хмеля. Первый дарит легкую горечь, традиционную для лагера в британском стиле, а также делает пиво прозрачно-золотистым и пенистым, второй — наполняет цветочно-травянистым ароматом.\nАромат и вкус: Солодовый евролагер со сладковатым привкусом."
        let textkoronetOriginal = "Описание: Пиво, сваренное в британском стиле. Глубокий темный цвет, солодово-карамельный аромат, горчинка и пышная кремовая пена.\nАромат и вкус: Легкий стаут в ирландском стиле с кофейно-ванильными нотками и терпким послевкусием."
        let textgarage = "Описание: В линейке Seth&Riley’s Garage представлена новая категория напитков hard drink, которые обладают ярким вкусом и небольшим содержанием алкоголя и вдохновлены классическими американскими рецептами.\nАромат и вкус: S&R's Garage Hard Lemon – это легкий и освежающий напиток со вкусом лимона, наполненный беззаботным калифорнийским настроением. Как и любой другой сорт Seth&Riley’s Garage, он идеально подходит для чилла в компании близких друзей."
        let textkoronetLager = "Описание: Европейский лагер золотисто-янтарного цвета. Лёгкий, с хмельным послевкусием.\nАромат и вкус: Плотный евролагер с доминирующей сладостью во вкусе."
        let textwarsteinerLightPilsner = "Описание: Warsteiner Light Pilsener — легкий пилснер, который обладает мягким и хорошо сбалансированным вкусом, характерным для настоящего немецкого пива. Первый сорт, разработанный специально для белорусского рынка пивоварами «Лидского пива» совместно с немецкими коллегами.\nАромат и вкус: Легкий пилснер, обладающий хорошо сбалансированным солодовым вкусом, типичным для настоящего немецкого пива."
        let textwarsteinerPremiumBeer = "Описание: Европейский лагер Warsteiner варится в соответствии с классическим немецким законом о чистоте пивоварения.\nАромат и вкус: Классический немецкий лагер с легкой горчинкой и хлебно-соловым послевкусием."
        let textzolotoe = "Описание: Первое пиво в СНГ, которому международное жюри в Брюсселе в мае 2015 году присудило Кристальную награду за лучший вкус. В 2016 году Аливария Золотое впервые из всех пивных брендов в Беларуси получило статус официального партнера УЕФА ЕВРО\nАромат и вкус: На Пивном чемпионате мира в Чикаго этот сорт получил следующую характеристику: «Выдержанный сверкающий золотой цвет. Ароматы подрумяненного зерна и хлебного теста завершают мягкую и сухую основу с нотками ореховой скорлупы и лимонного крема, сладостью пшеничного теста"
        let textbeloeZoloto = "Белое нефильтрованное пиво, сваренное с использованием пшеничного солода. Обладает особенным вкусом «живого» пива и уникальными освежающими свойствами, имеет тонкий аромат фруктов, кориандра и гвоздики. Пшеничный солод в составе пива Аливария Белое Золото придает композиции кремовую текстуру и легкую сладость. Сорт выпущен 9 октября 2008 года"
        let textbaltykaMygkoe = "Описание: Балтика 7 Мягкое - невероятно мягкий и натуральный вкус свежесваренного пива. Новинка 2020 года от самого известного бренда пива в России. Одной из особенностей новинки является яркий дизайн и новые формы для упаковки. Продукт производится в двух форматах: алюминиевая банка и стеклянная бутылка в прозрачном стекле, которая позволяет разглядеть продукт. Специальная светостойкая рецептура пива позволяет сохранить вкус, который оставляет незабываемое мягкое послевкусие у потребителей\nАромат и вкус: Легкая питкость и мягкость вкуса достигается за счет многоуровневой фильтрации, которая и создает вкус, который придется по вкусу многим ценителям легких лагеров.Пряный цветочно-хмелевой аромат и приятное послевкусие без ярко-выраженной горечи выгодно выделяют вкус среди других предложений светлого пива. "
        
        let lidskoeLove = UIImage(named: "Maistr pshnichnae")
        let lidskaeVecher = UIImage(named: "Maistr Vecher v Brugge")
        let liskaeLager = UIImage(named: "Maistr Neipa")
        let lidskaePremium = UIImage(named: "lidskae premium")
        let lidskaePorter = UIImage(named: "lidskae porter")
        let lidskaePilsner = UIImage(named: "lidskae pilsner")
        let koronetPUB = UIImage(named: "Koronet Pub Draught")
        let koronetOriginal = UIImage(named: "Koronet Stout")
        let garage = UIImage(named: "garage lemon drink")
        let koronetLager = UIImage(named: "Koronet Lager")
        let warsteinerLightPilsner = UIImage(named: "warstrewner light")
        let warsteinerPremiumBeer = UIImage(named: "warsteiner premium")
        let zolotoe = UIImage(named: "alivaria zolotoe")
        let beloeZoloto = UIImage(named: "alivaria beloe zoloto")
        let baltykaMygkoe = UIImage(named: "baltika mygkoe")
        
        switch currentBeer.photo {
           
        case .alivariaBeloeZoloto: photoOfBeer.image = beloeZoloto;  textAboutBeer.text = textbeloeZoloto
        case .alivariaZolotoe: photoOfBeer.image = zolotoe; textAboutBeer.text = textzolotoe
            
        case .baltikaMygkoe: photoOfBeer.image = baltykaMygkoe;  textAboutBeer.text = textbaltykaMygkoe
            
        case .garageLemonDrink: photoOfBeer.image = garage;  textAboutBeer.text = textgarage
            
        case .koronetLager: photoOfBeer.image = koronetLager;  textAboutBeer.text = textkoronetLager
            
        case .koronetPubDraught: photoOfBeer.image = koronetPUB;  textAboutBeer.text = textkoronetPUB
            
        case .koronetStoutOriginal: photoOfBeer.image = koronetOriginal;  textAboutBeer.text = textkoronetOriginal
            
        case .lidscaePremium: photoOfBeer.image = lidskaePremium;  textAboutBeer.text = textlidskaePremium
            
        case .lidscaePshenichnae: photoOfBeer.image = lidskoeLove;  textAboutBeer.text = textlidskoeLove
            
        case .lidskaeHoppyLager: photoOfBeer.image = liskaeLager;  textAboutBeer.text = textliskaeLager
            
        case .lidskaePorter: photoOfBeer.image = lidskaePorter;  textAboutBeer.text = textlidskaePorter
            
        case .lidslaePilsner: photoOfBeer.image = lidskaePilsner;  textAboutBeer.text = textlidskaePilsner
            
        case .vetcherVBrugge: photoOfBeer.image = lidskaeVecher;  textAboutBeer.text = textlidskaeVecher
            
        case .warsteinerLightPilsner: photoOfBeer.image = warsteinerLightPilsner;  textAboutBeer.text = textwarsteinerLightPilsner
            
        case .warsteinerPremiumBeer: photoOfBeer.image = warsteinerPremiumBeer;  textAboutBeer.text = textwarsteinerPremiumBeer
            
        }
        
        SegmentControllerVolume(volumeSegmentControl)
        updateVolume()
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func SegmentControllerVolume(_ sender: UISegmentedControl) {
        
        let price = BarManager.sharedInfo.pricesForBeer(with: beerIndex)
        
        switch sender.selectedSegmentIndex {
        case 0 : priceLabel.text = "Стоимость: \(price.0) р."
        case 1 : priceLabel.text = "Стоимость: \(price.1) р."
        case 2 : priceLabel.text = "Стоимость: \(price.2) р."
        default : return
        }
        updateVolume()
    }
    
    
    
    @IBAction func buyBeer(_ sender: Any) {
                
        BarManager.sharedInfo.buyBeer(with: beerIndex, volume: getCurrentVolume())
        
        updateVolume()
    }
    
   

   private func updateVolume (){
       VolumeLabel.text = "Остаток пива: \(BarManager.sharedInfo.initialBeers[beerIndex].volume )"
       checkVolume ()
    }
    
    
    
    
    private func checkVolume () {
        
        buyBeer.isEnabled = getCurrentVolume() <= BarManager.sharedInfo.initialBeers[beerIndex].volume
         
     }
     
    private func getCurrentVolume () -> Decimal {
         switch volumeSegmentControl.selectedSegmentIndex {
         case 0 : return 0.33
         case 1 : return 0.5
         case 2 : return 1
         default : return 0
         }
     }

}
