//
//  FeedViewController.swift
//  Navigation
//
//  Created by 1 on 05.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    struct Post {
        var title: String
    }
    
    let lastPost = Post.init(title: "Top post")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "New"
        
        let switchToPostButton = UIButton (frame: CGRect (x: 50, y: 250, width: 200, height: 50))
        switchToPostButton.backgroundColor = .darkGray
        switchToPostButton.layer.cornerRadius = 10
        switchToPostButton.layer.masksToBounds = true
        switchToPostButton.center = self.view.center
        switchToPostButton.setTitle ("Up to", for: .normal)
        switchToPostButton.addTarget(self, action: #selector (pressSwitch), for: .touchUpInside)
        self.view.addSubview(switchToPostButton)
    }
    
    @objc private func pressSwitch() {
        let post = PostViewController()
        post.navigationItem.title = lastPost.title
        self.navigationController?.pushViewController(post, animated: true)
    }
}
