//
//  MainViewController.swift
//  DouYuZB
//
//  Created by 李鑫 on 2017/10/3.
//  Copyright © 2017年 lixin. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addsubVc(subVcname: "Home")
        addsubVc(subVcname: "Live")
        addsubVc(subVcname: "Follow")
        addsubVc(subVcname: "Profile")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func addsubVc(subVcname : String){
        let vc = UIStoryboard(name:subVcname, bundle:nil).instantiateInitialViewController()!
        addChildViewController(vc)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
