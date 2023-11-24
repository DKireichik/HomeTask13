//
//  ViewController.swift
//  HomeTask13
//
//  Created by Darya on 23.11.23.
//

import UIKit

//class MyCustomHeader: UITableViewHeaderFooterView {
//   
//    let imageView = UIImageView()
//    
//    let firstLabel = UILabel()
//    let firstNameText = UITextField()
//
//    let middleLabel = UILabel()
//    let middleNameText = UITextField()
//
//    let lastLabel = UILabel()
//    let lastNameText = UITextField()
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//        configureContents()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//
//    func configureContents() {
//      
//        addSubview(imageView)
//        addSubview(firstLabel)
//        addSubview(middleLabel)
//        addSubview(lastLabel)
//        addSubview(firstNameText)
//        addSubview(middleNameText)
//        addSubview(lastNameText)
//  
//        imageView.image = .imageFood
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
//        imageView.heightAnchor.constraint(equalToConstant: 114).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 114).isActive = true
//        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//
//
//        firstLabel.text = "First"
//        firstLabel.textColor = .black
//        firstLabel.translatesAutoresizingMaskIntoConstraints = false
//        firstLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
//        firstLabel.centerYAnchor.constraint(equalTo: firstNameText.centerYAnchor).isActive = true
//        
//        middleLabel.text = "Middle"
//        middleLabel.textColor = .black
//        middleLabel.translatesAutoresizingMaskIntoConstraints = false
//        middleLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
//        middleLabel.centerYAnchor.constraint(equalTo: middleNameText.centerYAnchor).isActive = true
//                
//        lastLabel.text = "Last"
//        lastLabel.textColor = .black
//        lastLabel.translatesAutoresizingMaskIntoConstraints = false
//        lastLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 16).isActive = true
//        lastLabel.centerYAnchor.constraint(equalTo: lastNameText.centerYAnchor).isActive = true
//       
//        middleNameText.placeholder = "Enter Middle Name"
//        middleNameText.textColor = .black
//        middleNameText.translatesAutoresizingMaskIntoConstraints = false
//        middleNameText.backgroundColor = .white
//        middleNameText.borderStyle = .roundedRect
//        middleNameText.leftAnchor.constraint(equalTo: middleLabel.rightAnchor, constant: 16).isActive = true
//        middleNameText.topAnchor.constraint(equalTo: firstNameText.bottomAnchor, constant: 6).isActive = true
//
//        firstNameText.placeholder = "Enter First Name"
//        firstNameText.textColor = .black
//        firstNameText.translatesAutoresizingMaskIntoConstraints = false
//        firstNameText.backgroundColor = .white
//        firstNameText.borderStyle = .roundedRect
//        firstNameText.topAnchor.constraint(equalTo: imageView.topAnchor).isActive = true
//        firstNameText.leftAnchor.constraint(equalTo: middleNameText.leftAnchor).isActive = true
//        
//        lastNameText.placeholder = "Enter Last Name"
//        lastNameText.textColor = .black
//        lastNameText.translatesAutoresizingMaskIntoConstraints = false
//        lastNameText.backgroundColor = .white
//        lastNameText.borderStyle = .roundedRect
//        lastNameText.leftAnchor.constraint(equalTo: middleNameText.leftAnchor).isActive = true
//        lastNameText.topAnchor.constraint(equalTo: middleNameText.bottomAnchor, constant: 6).isActive = true
//   
//               }
//           }
//    
//class MyCustomFooter: UITableViewHeaderFooterView {
//   
//    let save = UIButton()
//    let cancel = UIButton()
//    let clear = UIButton()
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//        configureContents()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//
//    func configureContents() {
//      
//        addSubview(save)
//        addSubview(cancel)
//        addSubview(clear)
//
//        save.setTitle("Save", for: .normal)
//        save.setTitleColor(.blue, for: .normal)
//        save.translatesAutoresizingMaskIntoConstraints = false
//        save.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40).isActive = true
//        save.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        
//        clear.setTitle("Clear", for: .normal)
//        clear.setTitleColor(.blue, for: .normal)
//        clear.translatesAutoresizingMaskIntoConstraints = false
//        clear.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        clear.rightAnchor.constraint(equalTo: rightAnchor, constant: -40).isActive = true
//        
//        cancel.setTitle("Cancel", for: .normal)
//        cancel.setTitleColor(.blue, for: .normal)
//        cancel.translatesAutoresizingMaskIntoConstraints = false
//        cancel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        cancel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//   
//               }
//           }
//    
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var tableView = UITableView()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(tableView)
//        tableView.register(MyCustomHeader.self,
//              forHeaderFooterViewReuseIdentifier: "sectionHeader")
//        
//        tableView.register(MyCustomFooter.self,
//              forHeaderFooterViewReuseIdentifier: "sectionFooter")
//        
       
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = TableViewCell()
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
   
 func tableView(_ tableView: UITableView,
            viewForHeaderInSection section: Int) -> UIView? {
       let header = Header()
//     tableView.dequeueReusableHeaderFooterView(withIdentifier:
//                   "sectionHeader") as! MyCustomHeader
       return header
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = Footer()
//        tableView.dequeueReusableHeaderFooterView(withIdentifier:
//                    "sectionFooter") as! MyCustomFooter
        return footer
    }
  
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

