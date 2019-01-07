import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    let buildMode = BuildMode.current
    let flavor = Flavor.current
    print("buildMode: \(buildMode), flavor: \(flavor)")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
