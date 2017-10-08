//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by 李鑫 on 2017/10/3.
//  Copyright © 2017年 lixin. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {

    private lazy var pageTitleView : PageTitleView = {
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titleView = PageTitleView(frame:titleFrame, titles:titles)
        return titleView
    }()
    
    private lazy var pageContentView : PageContenteView = {[weak self] in
       let contentH = kScreenH - kStatusBarH - kNavigationBarH - kTitleViewH
       let contentFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH + kTitleViewH, width: kScreenW, height: contentH)
        
        var childVcs = [UIViewController]()
        for _ in 0..<4{
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor(r: CGFloat(arc4random_uniform(255)), g: CGFloat(arc4random_uniform(255)), b: CGFloat(arc4random_uniform(255)))
            childVcs.append(vc)
        }
        let contentView = PageContenteView(frame: contentFrame, childVcs: childVcs, parentViewController: self)
        return contentView
    }()
    override func viewDidLoad() {

        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

// 设置UI界面
extension HomeViewController{
    
    private func setupUI(){
        //不增加scroll内编剧
        automaticallyAdjustsScrollViewInsets = false
        setupNavigationBar()
        setPageTitle()
        view.addSubview(pageContentView)
        pageContentView.backgroundColor = UIColor.purple
    }
    
    private func setupNavigationBar(){
        
        let btn = UIButton()
        btn.setImage(UIImage(named:"logo"), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        let size = CGSize(width: 40, height: 40)
        
        let historyItem = UIBarButtonItem.createItem(imageName:"image_my_history", hightImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem.createItem(imageName: "btn_search", hightImageName: "btn_search_clicked", size: size)
        
        let qrcodeItem = UIBarButtonItem.createItem(imageName: "Image_scan", hightImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
    
    private func setPageTitle(){
        view.addSubview(pageTitleView)
    }
}
