//
//  SightWordsViewController.swift
//  SightWords
//
//  Created by Stephanie Ballard on 1/23/21.
//

import UIKit

class SightWordsViewController: UIViewController {
    
    // MARK: - Properties -
    var words = wordList
    var index = 0
    
    // MARK: - Outlets -
    @IBOutlet weak var cardCountTextLabel: UILabel!
    @IBOutlet weak var wordTextLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Actions -
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
    
    // MARK: - Helper Functions -
    func configureUI() {
        view.backgroundColor = #colorLiteral(red: 0.6196078431, green: 0.9647058824, blue: 1, alpha: 1)
        wordTextLabel.text = words[0]
        configureNextButton()
    }
    
    func alert() {
        let alert = UIAlertController(title: "Congratulations!", message: "You Did It!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Practice again?", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    func configureNextButton() {
        nextButton.layer.cornerRadius = 12
        nextButton.layer.borderWidth = 2.0
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        nextButton.setTitleColor(#colorLiteral(red: 0.5490196078, green: 0.5058823529, blue: 0.9647058824, alpha: 1), for: .normal)
        nextButton.setDimensions(height: 50, width: 100)
    }
}
