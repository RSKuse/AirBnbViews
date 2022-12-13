//
//  ViewController.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/13.
//

import UIKit

class ViewController: UIViewController {
    lazy var guestHouseContainerView: airBnbContainerView = {
        let view = airBnbContainerView()
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
    }()
    
    lazy var villaContainerView: villaInformationView = {
        let view = villaInformationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
     
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(guestHouseContainerView)
        view.addSubview(villaContainerView)

        
        
        guestHouseContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        guestHouseContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        guestHouseContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        guestHouseContainerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        villaContainerView.leftAnchor.constraint(equalTo: view .leftAnchor).isActive = true
        villaContainerView.rightAnchor.constraint(equalTo: view .rightAnchor).isActive = true
        villaContainerView.topAnchor.constraint(equalTo: guestHouseContainerView.bottomAnchor, constant: 20).isActive = true
        villaContainerView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }


}

