//
//  CollectionViewCell.swift
//  Lesson_8_Practice
//
//  Created by Yaroslav Surovtsev on 22.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    static let identifier: String = String(describing: CollectionViewCell.self)
    
    override func awakeFromNib() {
        regNotification()
    }
    
    private func regNotification() {
        NotificationCenter.default.addObserver(forName: nameNC, object: nil,
                                               queue: nil) { (notification: Notification) in
                                                self.selectBGCell() }
        }
    
    private func selectBGCell() {
        var firstNumber: Float = Float(arc4random_uniform(2) * 100)
        var secondNumber: Float = Float(arc4random_uniform(5) * 10)
        var thirdNumber: Float = Float(arc4random_uniform(5))
        let RGB1: Float = Float((firstNumber + secondNumber + thirdNumber) / Float(255))
        
        firstNumber = Float(arc4random_uniform(2) * 100)
        secondNumber = Float(arc4random_uniform(5) * 10)
        thirdNumber = Float(arc4random_uniform(5))
        let RGB2: Float = Float((firstNumber + secondNumber + thirdNumber) / Float(255))
        
        firstNumber = Float(arc4random_uniform(2) * 100)
        secondNumber = Float(arc4random_uniform(5) * 10)
        thirdNumber = Float(arc4random_uniform(5))
        let RGB3: Float = Float((firstNumber + secondNumber + thirdNumber) / Float(255))
        
        self.backgroundColor = UIColor(colorLiteralRed: RGB1, green: RGB2, blue: RGB3, alpha: Float(1.0))
    }
    
}
    

