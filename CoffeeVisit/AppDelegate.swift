import UIKit
import Scenic

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    prepareFirstViewController()
    
    return true
  }
  
  func prepareFirstViewController() {
    
    var viewController = firstViewController()
    
    //let context = StoryboardContext()
    
    viewController.storyboardSegueHandler = StoryboardSegueHandler()
    
  }
  
  func firstViewController() -> StoryboardManagedScene {
    
    return window?.rootViewController! as! StoryboardManagedScene
    
  }


}

