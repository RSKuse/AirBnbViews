//
//  ViewController.swift
//  AirBnbViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/13.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var guestHouseContainerView: AirBnbContainerView = {
        let view = AirBnbContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var villaContainerView: VillaInformationView = {
        let view = VillaInformationView()
        view.backgroundColor = .magenta
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var superHostContainerView: SuperHostInformationView = {
        let view = SuperHostInformationView()
        view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(guestHouseContainerView)
        view.addSubview(villaContainerView)
        view.addSubview(superHostContainerView)

        guestHouseContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        guestHouseContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        guestHouseContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        guestHouseContainerView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        villaContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        villaContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        villaContainerView.topAnchor.constraint(equalTo: guestHouseContainerView.bottomAnchor).isActive = true
        villaContainerView.heightAnchor.constraint(equalToConstant: 80).isActive = true

        superHostContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        superHostContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        superHostContainerView.topAnchor.constraint(equalTo: villaContainerView.bottomAnchor).isActive = true
        superHostContainerView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }

}
