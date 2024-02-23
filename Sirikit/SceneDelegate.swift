//
//  SceneDelegate.swift
//  Sirikit
//
//  Created by Aaron Smith on 2/23/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    //when user activity is performed, go to view controller and run the elapsed time function
    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
        if let viewController = window?.rootViewController as? ViewController {
            viewController.calculateElapsedTime_()
        }
    }
}
