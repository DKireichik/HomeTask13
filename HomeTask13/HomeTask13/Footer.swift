//
//  File.swift
//  HomeTask13
//
//  Created by Darya on 24.11.23.
//

import UIKit

protocol TabBarDelegate : AnyObject {
    func saveButtonPressed (_ sender: Footer)
    func textFieldShouldClear(_ sender: Footer)
}
class Footer: UIView {
  

        weak var delegate : TabBarDelegate?
  
        let save = UIButton()
        let cancel = UIButton()
        let clear = UIButton()


    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(save)
        addSubview(cancel)
        addSubview(clear)

        save.setTitle("Save", for: .normal)
        save.setTitleColor(.blue, for: .normal)
        save.translatesAutoresizingMaskIntoConstraints = false
        save.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40).isActive = true
        save.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        save.addTarget(self, action: #selector(saveText), for: .touchUpInside)
     
        
        clear.setTitle("Clear", for: .normal)
        clear.setTitleColor(.blue, for: .normal)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        clear.rightAnchor.constraint(equalTo: rightAnchor, constant: -40).isActive = true
        clear.addTarget(self, action: #selector(clearText), for: .touchUpInside)
        
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(.blue, for: .normal)
        cancel.translatesAutoresizingMaskIntoConstraints = false
        cancel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        cancel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBAction func saveText (_ sender: UIButton) {
        delegate?.saveButtonPressed(self)
    }
    @IBAction func clearText (_ sender: UIButton) {
        delegate?.textFieldShouldClear(self)
    }
}
