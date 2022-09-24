//
//  ViewController.swift
//  SelectThePoster
//
//  Created by Admin on 30/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }

    @IBAction func startBtn(_ sender: Any) {
        
        let selectVC = self.storyboard?.instantiateViewController(withIdentifier: "SelectionScreenVC") as! SelectionScreenVC
        selectVC.delegate = self
        selectVC.modalPresentationStyle = .fullScreen
        present(selectVC, animated: true, completion: nil)
    }
}

extension ViewController: SelectPlayerDelegate {

    func didTappedChange(image: UIImage, name: String, color: UIColor) {
        mainImage.image = image
        lable.text = name
        view.backgroundColor = color
    }
}
