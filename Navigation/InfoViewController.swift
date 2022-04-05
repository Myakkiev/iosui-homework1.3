//
//  InfoViewController.swift
//  Navigation
//
//  Created by 1 on 05.04.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
    
    let alertButton = UIButton (frame: CGRect (x: 50, y: 250, width: 200, height: 50))
    alertButton.backgroundColor = .darkGray
    alertButton.layer.cornerRadius = 10
    alertButton.layer.masksToBounds = true
    alertButton.center = self.view.center
    alertButton.setTitle ("Allert!", for: .normal)
    alertButton.addTarget(self, action: #selector (pressAlert), for: .touchUpInside)
    self.view.addSubview(alertButton)
    }
    
    @objc private func pressAlert() {
        let alert = UIAlertController (title: "Attention!", message: "Are you sure in this action?", preferredStyle: .alert)
        let okButton = UIAlertAction (title: "Yes", style: .default, handler: {action in print ("Yes")} )
        let notOKButton = UIAlertAction (title: "No", style: .default, handler: {action in print ("No")})
        alert.addAction(okButton)
        alert.addAction(notOKButton)
        present (alert, animated: true, completion: nil)
    }
}
