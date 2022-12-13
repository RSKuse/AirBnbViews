//
//  File.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/13.
//


import Foundation
import UIKit

class airBnbContainerView: UIView {
    
    lazy var airBnbHouseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "guest_house")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    lazy var guestHouseTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "The FAIRY FLYCATCHER (Lucky Crane Villas)"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ratingContainerView: airBnbRatingView = {
        let view = airBnbRatingView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var guestReviewTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "・42 reviews・"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var superHost: airBnbRatingView = {
        let view = airBnbRatingView()
        view.ratingLabel.text = "Superhost"
        view.ratingImageView.image = UIImage(named: "user_icon")
        view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    
    lazy var locationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "McGregor, Western Cape, South Africa"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var arrowBackImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "arrow_arrows_back_circle_direction_icon")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 25
        imageView.image = UIImage(named: "arrow_arrows_back_circle_direction_icon")?.withTintColor(.white)
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    lazy var separatorView: UIView = {
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
        
        setupAirBnbConstraints ()
       
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func setupAirBnbConstraints () {
        addSubview(airBnbHouseImageView)
        addSubview(guestHouseTitleLabel)
        addSubview(ratingContainerView)
        addSubview(guestReviewTitleLabel)
        addSubview(superHost)
        addSubview(locationTitleLabel)
        addSubview(arrowBackImageView)
        addSubview(separatorView)

        
        
        airBnbHouseImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        airBnbHouseImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        airBnbHouseImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        airBnbHouseImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        guestHouseTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        guestHouseTitleLabel.topAnchor.constraint(equalTo: airBnbHouseImageView.bottomAnchor, constant: 30).isActive = true
        guestHouseTitleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        ratingContainerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        ratingContainerView.topAnchor.constraint(equalTo: guestHouseTitleLabel.bottomAnchor, constant: 20).isActive = true
        ratingContainerView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        guestReviewTitleLabel.centerYAnchor.constraint(equalTo: ratingContainerView.centerYAnchor).isActive = true
        guestReviewTitleLabel.topAnchor.constraint(equalTo: guestHouseTitleLabel.bottomAnchor, constant: 20).isActive = true
        guestReviewTitleLabel.leftAnchor.constraint(equalTo: ratingContainerView.rightAnchor, constant: -315).isActive = true
        
        superHost.leftAnchor.constraint(equalTo: ratingContainerView.leftAnchor, constant: 170).isActive = true
        superHost.centerYAnchor.constraint(equalTo: ratingContainerView.centerYAnchor).isActive = true
        superHost.topAnchor.constraint(equalTo: guestHouseTitleLabel.bottomAnchor, constant: 20).isActive = true
        //superHost.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        
        locationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        locationTitleLabel.topAnchor.constraint(equalTo: ratingContainerView.bottomAnchor, constant: 3).isActive = true
        locationTitleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        arrowBackImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        arrowBackImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        arrowBackImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        arrowBackImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        separatorView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        separatorView.topAnchor.constraint(equalTo: locationTitleLabel.bottomAnchor, constant: 20).isActive = true
        separatorView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        
        
        
    }
    
    
}


