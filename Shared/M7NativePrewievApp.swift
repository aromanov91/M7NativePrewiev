//
//  M7NativePrewievApp.swift
//  Shared
//
//  Created by 18391981 on 11.09.2020.
//

import SwiftUI

@main
struct M7NativePrewievApp {
    static func main() {
        
        if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
            SwiftUIApp.main()
        } else {
            #if os(iOS) // iOS 13.0 or lower
            UIApplicationMain(CommandLine.argc,
                              CommandLine.unsafeArgv,
                              nil,
                              NSStringFromClass(AppDelegate.self))
            #else
            print("This app doesn't run (yet) on this OS, so Bye")
            return
            #endif
        }
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SwiftUIApp: App {
    var body: some Scene {
        return WindowGroup {
            #if os(macOS)
            ContentView().frame(minWidth: 100, idealWidth: 300, maxWidth: .infinity, minHeight: 100, idealHeight: 200, maxHeight: .infinity)
            #else
            ContentView()
            #endif
        }
    }
}

#if os(iOS)
import UIKit
// @UIApplicationMain <- remove that!
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        print("AppDelegate didFinishLaunchingWithOptions")
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        print("SceneDelegate")
        
        let contentView = ContentView()
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
    
}
#endif
