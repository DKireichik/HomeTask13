//
//  TableViewCell.swift
//  HomeTask13
//
//  Created by Darya on 23.11.23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    var notes = UITextView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(notes)
        notes.translatesAutoresizingMaskIntoConstraints = false
        notes.backgroundColor = .gray
        notes.text = "Notes:"
        notes.isScrollEnabled = false
        notes.topAnchor.constraint(equalTo: topAnchor).isActive = true
        notes.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        notes.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        notes.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    
