import UIKit
//import Braintree
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
//    BTAppContextSwitcher.setReturnURLScheme("com.example.multiVendorServices.braintree")
    GMSServices.provideAPIKey("AIzaSyCMrjc6YIkMQdRXzXuOuZmCLB1iLf67IAk")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
