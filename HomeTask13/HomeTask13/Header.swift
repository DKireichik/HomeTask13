//
//  Header.swift
//  HomeTask13
//
//  Created by Darya on 24.11.23.
//

import UIKit

class Header: UIView {
      
       
            let imageView = UIImageView()
        
            let firstLabel = UILabel()
            let firstNameText = UITextField()
        
            let middleLabel = UILabel()
            let middleNameText = UITextField()
        
            let lastLabel = UILabel()
            let lastNameText = UITextField()

       
     
        
        override init(frame: CGRect) {
            super.init(frame: frame)
          
     
            addSubview(imageView)
            addSubview(firstLabel)
            addSubview(middleLabel)
            addSubview(lastLabel)
            addSubview(firstNameText)
            addSubview(middleNameText)
            addSubview(lastNameText)
            
          
            
            imageView.image = .imageFood
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            imageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
            imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            
            
            firstLabel.text = "First"
            firstLabel.textColor = .black
            firstLabel.translatesAutoresizingMaskIntoConstraints = false
            firstLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
            firstLabel.centerYAnchor.constraint(equalTo: firstNameText.centerYAnchor).isActive = true
            
          

            middleLabel.text = "Middle"
            middleLabel.textColor = .black
            middleLabel.translatesAutoresizingMaskIntoConstraints = false
            middleLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
            middleLabel.centerYAnchor.constraint(equalTo: middleNameText.centerYAnchor).isActive = true
            
            
            lastLabel.text = "Last"
            lastLabel.textColor = .black
            lastLabel.translatesAutoresizingMaskIntoConstraints = false
            lastLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
            lastLabel.centerYAnchor.constraint(equalTo: lastNameText.centerYAnchor).isActive = true
           
            middleNameText.placeholder = "Enter Middle Name"
            middleNameText.textColor = .black
            middleNameText.translatesAutoresizingMaskIntoConstraints = false
            middleNameText.backgroundColor = .white
            middleNameText.borderStyle = .roundedRect
            middleNameText.leftAnchor.constraint(equalTo: middleLabel.rightAnchor, constant: 16).isActive = true
            middleNameText.topAnchor.constraint(equalTo: firstNameText.bottomAnchor, constant: 6).isActive = true

            
            firstNameText.placeholder = "Enter First Name"
            firstNameText.textColor = .black
            firstNameText.translatesAutoresizingMaskIntoConstraints = false
            firstNameText.backgroundColor = .white
            firstNameText.borderStyle = .roundedRect
            firstNameText.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
            firstNameText.leftAnchor.constraint(equalTo: middleNameText.leftAnchor).isActive = true

            
            lastNameText.placeholder = "Enter Last Name"
            lastNameText.textColor = .black
            lastNameText.translatesAutoresizingMaskIntoConstraints = false
            lastNameText.backgroundColor = .white
            lastNameText.borderStyle = .roundedRect
            lastNameText.leftAnchor.constraint(equalTo: middleNameText.leftAnchor).isActive = true
            lastNameText.topAnchor.constraint(equalTo: middleNameText.bottomAnchor, constant: 6).isActive = true

        }
       
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
       
    }
