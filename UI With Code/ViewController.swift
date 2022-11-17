//
//  ViewController.swift
//  UI With Code
//
//  Created by Aasem Hany on 16/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label1 = createLabel(withText: "THESE",   withColor: .red)
        let label2 = createLabel(withText: "ARE",     withColor: .cyan)
        let label3 = createLabel(withText: "SOME",    withColor: .yellow)
        let label4 = createLabel(withText: "AWESOME", withColor: .green )
        let label5 = createLabel(withText: "LALELS",  withColor: .orange)
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        let views = ["label1":label1,"label2":label2,"label3":label3,"label4":label4,"label5":label5]
//
//        for view in views.keys {
//            self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|[\(view)]|", options: [], metrics: nil, views: views))
//        }
//        let metrics = ["labelHeight":80]
//        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|-[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: views))

        var prevLabel:UILabel?
        
        for label in [label1,label2,label3,label4,label5] {
           
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            
            label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/5,constant: -10.0).isActive=true
            if let prevLabel = prevLabel {
                label.topAnchor.constraint(equalTo: prevLabel.bottomAnchor,constant: 10).isActive = true
            }else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 0).isActive = true
            }
            prevLabel = label
        }

    }
    
    func createLabel(withText text:String,withColor color: UIColor)->UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = color
        label.text = text
        label.sizeToFit()
        return label
    }


}

