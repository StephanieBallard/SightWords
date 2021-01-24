//
//  SightWordsCollectionView.swift
//  SightWords
//
//  Created by Stephanie Ballard on 1/23/21.
//

import UIKit

class SightWordsLessonViewController: UIViewController {
    
    enum Section: Int, Hashable, CaseIterable {
        case sightWord
        
    }
    
    struct Item: Hashable {
        let word: String
    }
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Helper Functions -
    
}
