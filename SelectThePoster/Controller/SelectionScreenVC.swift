//
//  SelectionScreenVCViewController.swift
//  SelectThePoster
//
//  Created by Admin on 30/07/22.
//
import UIKit

protocol SelectPlayerDelegate {
    func didTappedChange(image: UIImage, name: String, color: UIColor)
}

class SelectionScreenVC: UIViewController {
    
    var delegate: SelectPlayerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstBtn(_ sender: UIButton) {
        delegate.didTappedChange(image: UIImage(named: "YagamiImg")!, name: "Light Yagami", color: .blue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func secondBtn(_ sender: Any) {
        delegate.didTappedChange(image: UIImage(named: "LImg")!, name: "L", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
}
