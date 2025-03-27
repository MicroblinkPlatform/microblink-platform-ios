import MicroblinkPlatform
import SwiftUI

struct ContentView: View {
    @State private var showSDK = false

    var body: some View {
        Button("Start SDK") {
            showSDK = true
        }
        .fullScreenCover(isPresented: $showSDK) {
#warning ("Please replace with your own workflowId and authProviderHost!")
#warning ("Please check documentation: https://github.com/MicroblinkPlatform/microblink-platform-ios/tree/main?tab=readme-ov-file#microblinkplatform-server-compatibility")
            MicroblinkPlatformWrapperView(
                workflowId: "66e2ea8d565cfb4fc3f04c6f",
                authProviderHost: "https://api.us-east.platform.microblink.com",
                additionalRequestHeaders: nil
            ) { result in
                showSDK = false
            } onClose: {
                showSDK = false
            }
        }
    }
}

struct MicroblinkPlatformWrapperView: UIViewControllerRepresentable {
    let workflowId: String
    let authProviderHost: String
    let additionalRequestHeaders: [String: String]?

    var onCompletion: (MicroblinkPlatformResult) -> Void
    var onClose: () -> Void

    init(workflowId: String, authProviderHost: String, additionalRequestHeaders: [String : String]? = nil, onCompletion: @escaping (MicroblinkPlatformResult) -> Void, onClose: @escaping () -> Void) {
        self.workflowId = workflowId
        self.authProviderHost = authProviderHost
        self.additionalRequestHeaders = additionalRequestHeaders
        self.onCompletion = onCompletion
        self.onClose = onClose
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
#warning ("Please replace with your own userId!")
        let consent = MicroblinkPlatformConsent(
            userId: "microblink-public-sample-app-ios-user-id",
            isProcessingStoringAllowed: true,
            isTrainingAllowed: true,
            note: nil
        )
        
        let serviceSettings = MicroblinkPlatformServiceSettings(
            workflowId: workflowId,
            authProviderHost: authProviderHost,
            consent: consent,
            additionalRequestHeaders: additionalRequestHeaders
        )

        let microblinkPlatform = MicroblinkPlatformSDK(
            serviceSettings: serviceSettings,
            delegate: context.coordinator
        )

        return microblinkPlatform.startSDK()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(onCompletion: onCompletion, onClose: onClose)
    }

    class Coordinator: NSObject, MicroblinkPlatformSDKDelegate {
        var onCompletion: (MicroblinkPlatformResult) -> Void
        var onClose: () -> Void

        init(onCompletion: @escaping (MicroblinkPlatformResult) -> Void, onClose: @escaping () -> Void) {
            self.onCompletion = onCompletion
            self.onClose = onClose
        }

        func microblinkPlatformSDKDidFinish(viewController: UIViewController, result: MicroblinkPlatformResult) {
            print("Sample microblinkPlatformSDKDidFinish: \(result)")
            viewController.dismiss(animated: true) {
                self.onCompletion(result)
            }
        }

        func microblinkPlatformSDKDidClose(viewController: UIViewController) {
            print("Sample microblinkPlatformSDKDidClose")
            viewController.dismiss(animated: true) {
                self.onClose()
            }
        }
    }
}

#Preview {
    ContentView()
}
