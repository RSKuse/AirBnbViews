//
//  HostContainerView.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/14.
//

import Foundation
import UIKit


class villaInformationView: UIView {
    
    lazy var hostProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "monika")
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var InformationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Entire villa hosted by Monika"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 19, weight: UIFont.Weight.bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUIVillaInfoConstraint ()
        
    }
    
    
    
    
   
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUIVillaInfoConstraint () {
        addSubview(hostProfileImageView)
        addSubview(InformationTitleLabel)
        
        
        
        
        
        hostProfileImageView.topAnchor.constraint(equalTo: bottomAnchor, constant: 90).isActive = true
        hostProfileImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        hostProfileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        hostProfileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        InformationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        InformationTitleLabel.centerYAnchor.constraint(equalTo: hostProfileImageView.centerYAnchor).isActive = true
        InformationTitleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
    }
        
        
        
        
    }
    
    

