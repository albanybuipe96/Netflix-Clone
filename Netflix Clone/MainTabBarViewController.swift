//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Albany Buipe on 17/06/2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.tabBarItem.title = "Home"
        vc2.tabBarItem.title = "Coming Soon"
        vc3.tabBarItem.title = "Top Searches"
        vc4.tabBarItem.title = "Downloads"
        
        tabBar.tintColor = .label
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        //        initializeControllers()
    }
    
}

extension MainTabBarViewController {
    private func initializeControllers() {
        let homeVC: UINavigationController = {
            let vc = UINavigationController(rootViewController: HomeViewController())
            vc.configureTabBar(image: "house", title: "Home", scale: .large)
            return vc
        }()
        
        let upcomingVC: UINavigationController = {
            let vc = UINavigationController(rootViewController: UpcomingViewController())
            vc.configureTabBar(image: "play.circle", title: "Coming Soon", scale: .large)
            return vc
        }()
        
        let searchVC: UINavigationController = {
            let vc = UINavigationController(rootViewController: SearchViewController())
            vc.configureTabBar(image: "magnifyingglass", title: "Top Searches", scale: .large)
            return vc
        }()
        
        let downloadsVC: UINavigationController = {
            let vc = UINavigationController(rootViewController: DownloadsViewController())
            vc.configureTabBar(image: "arrow.down.to.line", title: "Downloads", scale: .large)
            return vc
        }()
        
        viewControllers = [homeVC, upcomingVC, searchVC, downloadsVC]
    }
}

#Preview("MainTabBar") {
    MainTabBarViewController()
}
