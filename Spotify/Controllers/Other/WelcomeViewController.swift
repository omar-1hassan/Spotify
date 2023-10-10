//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by mac on 24/09/2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightText
        button.setTitle("Sign In With Spotify", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "albums_background")
        return imageView
    }()
    
    private let overlayView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.6
        return view
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.text = "Listen to Millions\nof Songs on\nthe go."
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.addSubview(imageView)
        view.addSubview(overlayView)
        view.backgroundColor = .blue
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        view.addSubview(label)
        view.addSubview(logoImageView)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = view.bounds
        overlayView.frame = view.bounds
        signInButton.frame = CGRect(x: 20,
                                    y: view.height-50-view.safeAreaInsets.bottom,
                                    width: view.width-40,
                                    height: 50)
        logoImageView.frame = CGRect(x: (view.width-120)/2, y: (view.height-350)/2, width: 120, height: 120)
        label.frame = CGRect(x: 30, y: logoImageView.bottom+30, width: view.width-60, height: 150)
    }
    
    @objc func didTapSignIn(){
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handelSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handelSignIn(success: Bool){
        //Log user in or yell at them for error
        guard success else {
            let alert = UIAlertController(title: "Oops", message: "Somethin went wrong when signing in.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert,animated: true)
            
            return
        }
        let mainAppTabBarVc = TabBarViewController()
        mainAppTabBarVc.modalPresentationStyle = .fullScreen
        present(mainAppTabBarVc, animated: true)
    }
}
