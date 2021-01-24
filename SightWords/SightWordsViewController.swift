//
//  SightWordsViewController.swift
//  SightWords
//
//  Created by Stephanie Ballard on 1/23/21.
//

import UIKit

class SightWordsViewController: UIViewController {
    
    // MARK: - Properties -
    var words = ["the", "at", "them"]
//    "and", "mine", "many", "what", "any", "this", "that", "she", "his"
    var index = 0
    
    @IBOutlet weak var cardCountTextLabel: UILabel!
    @IBOutlet weak var wordTextLabel: UILabel!
    @IBOutlet weak var cardsRemainingSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    @IBAction func shuffleButtonTapped(_ sender: UIButton) {
        words.shuffle()
        print(words)
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if index + 1 == words.count {
            index = 0
            alert()
            
        } else {
            index += 1
        }
        wordTextLabel.text = words[index]
    }
    
    func configureUI() {
        wordTextLabel.text = words[0]
    }
    
    func alert() {
        let alert = UIAlertController(title: "Congratulations!", message: "You Did It!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Practice again?", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
}

