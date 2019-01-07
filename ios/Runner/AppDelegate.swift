import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {

    let buildMode = BuildMode.current
    let flavor = Flavor.current
    print("buildMode: \(buildMode), flavor: \(flavor)")

    configureFirebase()

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

extension Flavor {
    var firebaseOptions: FirebaseOptions {
        let filename = { () -> String in
            let base = "GoogleService-Info"
            switch Flavor.current {
            case .development: return "\(base)-Development"
            case .staging: return "\(base)-Staging"
            case .production: return "\(base)-Production"
            }
        }()
        let path = Bundle.main.path(forResource: filename, ofType: "plist")!
        return FirebaseOptions(contentsOfFile: path)!
    }
}

private func configureFirebase() {
    let firOptions = Flavor.current.firebaseOptions
    FirebaseApp.configure(options: firOptions)

    // FirestoreでTimestamp型を使うように
    // Flutter側でやるのでコメントアウト
//    let db = Firestore.firestore()
//    let settings = db.settings
//    settings.areTimestampsInSnapshotsEnabled = true
//    db.settings = settings
}
