//
//  ViewController.swift
//  Account
//
//  Created by Fachri Febrian on 21/05/2019.
//

import UIKit

public class ViewController: UIViewController {
    
    private lazy var sampleView: SampleView = SampleView.fromNib(
        forResource: Constant.pathResources
    )
    
    var imageView: UIImageView  = UIImageView()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let width: CGFloat = UIScreen.main.bounds.width - 100
        imageView.frame = CGRect(x: 0, y: 0, width: width, height: 100)
        imageView.image = UIImage.sampleImage(named: "navlogo_red1")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        sampleView.frame = CGRect(x: 100, y: 100, width: width, height: 100)
        sampleView.titleLabel.text = "SampleView"
        sampleView.backgroundColor = .white
        view.addSubview(sampleView)
        
        showTwoVC()
    }
    
    private func showTwoVC() {
        let vc = TwoViewController(nibName: "TwoViewController", bundle: Constant.bundle)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
