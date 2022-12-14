//
//  HostContainerView.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/14.
//

import Foundation
import UIKit

class VillaInformationView: UIView {
    
    lazy var hostProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "monika")
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var informationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Entire villa hosted by Monika"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var villaDescriptionTitleLabel : UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.text = "2 guest・1 bedroom・1 bed 1 bedroom"
         label.numberOfLines = 2
         label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular)
         label.textAlignment = .left
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    
    lazy var separatorView2: UIView = {
         let view = UIView()
         view.backgroundColor = .lightGray
         view.translatesAutoresizingMaskIntoConstraints = false
         view.layer.borderColor = UIColor.lightGray.cgColor
         view.layer.borderWidth = 0.5
         view.layer.masksToBounds = true
         return view
     }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIVillaInfoConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIVillaInfoConstraint () {
        addSubview(hostProfileImageView)
        addSubview(informationTitleLabel)
        addSubview(villaDescriptionTitleLabel)
        addSubview(separatorView2)
        
        hostProfileImageView.topAnchor.constraint(equalTo: bottomAnchor, constant: 90).isActive = true
       
        hostProfileImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        hostProfileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        hostProfileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        informationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        informationTitleLabel.centerYAnchor.constraint(equalTo: hostProfileImageView.centerYAnchor).isActive = true
        informationTitleLabel.rightAnchor.constraint(equalTo: hostProfileImageView.leftAnchor, constant: -20).isActive = true

        villaDescriptionTitleLabel.topAnchor.constraint(equalTo: informationTitleLabel.bottomAnchor, constant: 3).isActive = true
        villaDescriptionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        villaDescriptionTitleLabel.rightAnchor.constraint(equalTo: hostProfileImageView.leftAnchor, constant: -20).isActive = true

        separatorView2.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        separatorView2.topAnchor.constraint(equalTo: villaDescriptionTitleLabel.bottomAnchor, constant: 20).isActive = true
        separatorView2.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        separatorView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
        
}
