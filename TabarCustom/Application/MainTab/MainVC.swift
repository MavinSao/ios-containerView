//
//  ViewController.swift
//  TabarCustom
//
//  Created by Mavin on 9/11/21.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var homeContainerView        : UIView!
    @IBOutlet weak var addContainerView         : UIView!
    @IBOutlet weak var settingContainerView     : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configContainerView(isHiddenHome: false, isHiddenAdd: true, isHiddenSetting: true)
    }
    
    func configContainerView(isHiddenHome: Bool, isHiddenAdd: Bool, isHiddenSetting: Bool) {
        homeContainerView.isHidden      = isHiddenHome
        addContainerView.isHidden       = isHiddenAdd
        settingContainerView.isHidden   = isHiddenSetting
    }

    @IBAction func homeBtn(_ sender: Any) {
        configContainerView(isHiddenHome: false, isHiddenAdd: true, isHiddenSetting: true)
    }
    
    @IBAction func addBtn(_ sender: Any) {
        configContainerView(isHiddenHome: true, isHiddenAdd: false, isHiddenSetting: true)
    }
    
    @IBAction func settingBtn(_ sender: Any) {
        configContainerView(isHiddenHome: true, isHiddenAdd: true, isHiddenSetting: false)
    }
}

