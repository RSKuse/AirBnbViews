//
//  File.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/13.
//


import Foundation
import UIKit

class AirBnbContainerView: UIView {
    
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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ratingContainerView: AirBnbRatingView = {
        let view = AirBnbRatingView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var guestReviewTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "・42 reviews・"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var superHostView: AirBnbRatingView  = {
        let view = AirBnbRatingView()
        view.ratingLabel.text = "Superhost"
        view.ratingImageView.image = UIImage(named: "user_icon")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var locationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "McGregor Coastal Lines and Beaches, Western Cape, South Africa"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAirBnbConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func setupAirBnbConstraints () {
        addSubview(airBnbHouseImageView)
        addSubview(guestHouseTitleLabel)
        addSubview(ratingContainerView)
        addSubview(guestReviewTitleLabel)
        addSubview(superHostView)
        addSubview(locationTitleLabel)
        addSubview(separatorView)

        airBnbHouseImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        airBnbHouseImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        airBnbHouseImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        airBnbHouseImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        guestHouseTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        guestHouseTitleLabel.topAnchor.constraint(equalTo: airBnbHouseImageView.bottomAnchor, constant: 30).isActive = true
        guestHouseTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        ratingContainerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        ratingContainerView.topAnchor.constraint(equalTo: guestHouseTitleLabel.bottomAnchor,
                                                 constant: 16).isActive = true
        ratingContainerView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        ratingContainerView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        guestReviewTitleLabel.centerYAnchor.constraint(equalTo: ratingContainerView.centerYAnchor).isActive = true
        guestReviewTitleLabel.leftAnchor.constraint(equalTo: ratingContainerView.rightAnchor).isActive = true
        guestReviewTitleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
       
        superHostView.leftAnchor.constraint(equalTo: guestReviewTitleLabel.rightAnchor).isActive = true
        superHostView.centerYAnchor.constraint(equalTo: ratingContainerView.centerYAnchor).isActive = true
        
        locationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor,
                                                 constant: 20).isActive = true
        locationTitleLabel.topAnchor.constraint(equalTo: ratingContainerView.bottomAnchor,
                                                constant: 8).isActive = true
        locationTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        separatorView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 0.6).isActive = true
    }
}
