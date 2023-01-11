//
//  ViewController.swift
//  scrollviewLearn
//
//  Created by Prakash on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
    }
    
    // 1. create scroll view
    let scrollView : UIScrollView = {
       let view = UIScrollView()
        view.showsVerticalScrollIndicator = true
        view.isDirectionalLockEnabled = true
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // 2. create content view
    let contentView : UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // 3. create ui
    
    //TODO: Top View
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let titleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 40)
        label.text = "Character"
        return label
    }()
    let characterNameLabel : UILabel = {
       let label = UILabel()
        label.text = "Iron man"
        label.numberOfLines = 0
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 25)
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //TODO: Middle view
    let middleView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let characterImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "iron-man")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let characterDescription : UILabel = {
       let label = UILabel()
        label.text = "Anthony Edward Tony Stark was a billionaire industrialist, a founding member of the Avengers, and the former CEO of Stark Industries. A brash but brilliant inventor, Stark was self-described as a genius, billionaire, playboy, and philanthropist. With his great wealth and exceptional technical knowledge, Stark was one of the world's most powerful men following the deaths of his parents and enjoyed the playboy lifestyle for many years until he was kidnapped by the Ten Rings in Afghanistan, while demonstrating a fleet of Jericho missiles. With his life on the line, Stark created an armored suit which he used to escape his captors. Upon returning home, he utilized several more armors to use against terrorists, as well as Obadiah Stane who turned against Stark. Following his fight against Stane, Stark publicly revealed himself as Iron Man."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 25)
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    // 4. add constraints
    func configureUI(){
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        configureTopView()
        configureMiddleView()
    }
    
    func configureTopView(){
        contentView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: contentView.topAnchor),
            topView.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 16),
            topView.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -16),
            topView.heightAnchor.constraint(lessThanOrEqualToConstant: 150)
        ])
        
        topView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topView.topAnchor,constant: 10),
            titleLabel.leftAnchor.constraint(equalTo: topView.leftAnchor),
            titleLabel.rightAnchor.constraint(equalTo: topView.rightAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        topView.addSubview(characterNameLabel)
        NSLayoutConstraint.activate([
            characterNameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10),
            characterNameLabel.leftAnchor.constraint(equalTo: topView.leftAnchor),
            characterNameLabel.rightAnchor.constraint(equalTo: topView.rightAnchor),
            characterNameLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor)
        ])
    }
    
    func configureMiddleView(){
        contentView.addSubview(middleView)
        NSLayoutConstraint.activate([
            middleView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            middleView.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 16),
            middleView.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -16),
            middleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
        middleView.addSubview(characterImage)
        NSLayoutConstraint.activate([
            characterImage.topAnchor.constraint(equalTo: middleView.topAnchor,constant: 10),
            characterImage.leftAnchor.constraint(equalTo: middleView.leftAnchor),
            characterImage.rightAnchor.constraint(equalTo: middleView.rightAnchor),
            characterImage.heightAnchor.constraint(equalToConstant: 400)
        ])
        
        middleView.addSubview(characterDescription)
        NSLayoutConstraint.activate([
            characterDescription.topAnchor.constraint(equalTo: characterImage.bottomAnchor),
            characterDescription.leftAnchor.constraint(equalTo: middleView.leftAnchor),
            characterDescription.rightAnchor.constraint(equalTo: middleView.rightAnchor),
            characterDescription.bottomAnchor.constraint(equalTo: middleView.bottomAnchor)
        ])
    }


}

