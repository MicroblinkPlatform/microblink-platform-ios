import MicroblinkPlatform
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startSDK(_ sender: UIButton) {

#warning ("Please replace with your own userId!")
        let consent = MicroblinkPlatformConsent(
            userId: "microblink-public-sample-app-ios-user-id",
            isProcessingStoringAllowed: true,
            isTrainingAllowed: true,
            note: nil
        )

#warning ("Please replace with your own workflowId and authProviderHost!")
#warning ("Please check documentation: https://github.com/MicroblinkPlatform/microblink-platform-ios/tree/main?tab=readme-ov-file#microblinkplatform-server-compatibility")
        let serviceSettings = MicroblinkPlatformServiceSettings(
            workflowId: "66e2ea8d565cfb4fc3f04c6f",
            authProviderHost: "https://api.us-east.platform.microblink.com",
            consent: consent,
            additionalRequestHeaders: nil
        )
        
        let microblinkPlatform = MicroblinkPlatformSDK(
            serviceSettings: serviceSettings,
            delegate: self
        )
        
        let viewController = microblinkPlatform.startSDK()
        
        present(viewController, animated: true)
    }
}

extension ViewController: MicroblinkPlatformSDKDelegate {
    func microblinkPlatformSDKDidFinish(viewController: UIViewController, result: MicroblinkPlatformResult) {
        viewController.dismiss(animated: true)
        print("Sample microblinkPlatformSDKDidFinish: \(result)")
    }
    
    func microblinkPlatformSDKDidClose(viewController: UIViewController) {
        viewController.dismiss(animated: true)
        print("Sample microblinkPlatformSDKDidClose")
    }
}
