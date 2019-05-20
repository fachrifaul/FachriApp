//
//  ViewController.swift
//  Core
//
//  Created by Fachri Febrian on 21/05/2019.
//

import UIKit


import UIKit

public class ViewController: UIViewController {
    
    var imageView: UIImageView  = UIImageView()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let width: CGFloat = UIScreen.main.bounds.width - 100
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: 100)
        imageView.image = UIImage(named: "navlogo_red")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}

