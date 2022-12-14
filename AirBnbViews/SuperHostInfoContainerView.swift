//
//  SuperHostInfoContainerView.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/14.
//

import Foundation
import UIKit

class SuperHostInformationView: UIView {
    
    lazy var hostIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "user_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var informationTitleLabel2 : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Monika is a Superhost"
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var superHostExplainationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Superhosts are experienced,highly rated host who are committed to providing great stays for their guests"
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIHostInfoConstraint ()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIHostInfoConstraint () {
        
        addSubview(hostIconImageView)
        addSubview(informationTitleLabel2)
        addSubview(superHostExplainationTitleLabel)

        hostIconImageView.topAnchor.constraint(equalTo: bottomAnchor, constant: 120).isActive = true
        hostIconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        hostIconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        hostIconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        informationTitleLabel2.leftAnchor.constraint(equalTo: hostIconImageView.rightAnchor ,constant: 10).isActive = true
        informationTitleLabel2.centerYAnchor.constraint(equalTo: hostIconImageView.centerYAnchor).isActive = true
        
        
        superHostExplainationTitleLabel.topAnchor.constraint(equalTo: informationTitleLabel2.bottomAnchor, constant: 3).isActive = true
        superHostExplainationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 55).isActive = true
        //superHostExplainationTitleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        superHostExplainationTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
    
    }
}
