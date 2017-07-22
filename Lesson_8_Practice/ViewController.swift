//
//  ViewController.swift
//  Lesson_8_Practice
//
//  Created by Yaroslav Surovtsev on 22.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import UIKit

let nameNC = NSNotification.Name(rawValue: "nameNC")

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        regCells()
    
        Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                         selector: #selector(self.update),
                                         userInfo: nil, repeats: true)
    }
    
    private func regCells() {
        collectionView.register(UINib(nibName: CollectionViewCell.identifier,
                                      bundle: nil),
                                forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
    func update() {
        NotificationCenter.default.post(name: nameNC, object: nil)
    }

}

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier,
                                                      for: indexPath)
        return cell
    }
    
}

