import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
        ) -> Bool {
        let flutterVC: FlutterViewController = window?.rootViewController as! FlutterViewController

        let ch = FlutterMethodChannel(name: "com.maeharin/sample", binaryMessenger: flutterVC)

        ch.setMethodCallHandler({ [weak self] (call, result) in
            guard call.method == "foo" else {
                result(FlutterMethodNotImplemented)
                return
            }
            
            let vc = SampleViewController()
            flutterVC.present(vc, animated: true, completion: nil)
        })
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}


