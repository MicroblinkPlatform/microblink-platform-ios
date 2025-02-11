<p align="center">
  <img src="https://raw.githubusercontent.com/wiki/blinkid/blinkid-ios/Images/logo-microblink.png" alt="Microblink Logo" title="Microblink Logo">
</p>

[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

# MicroblinkPlatform SDK for iOS

> [!CAUTION]
> Add description.

## Table Of Contents

## Requirements

MicroblinkPlatform SDK requires iOS 16.0+.

## MicroblinkPlatform Server compatibility

> [!IMPORTANT]
> To use our API, you will need an `workflowId` and `authProviderHost`. Please reach out to us to obtain these credentials.

Make sure that you use a compatible Workflow version for the MicroblinkPlatform iOS library version that you use.

> [!CAUTION]
> Add more info.

## SDK integration

### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add https://github.com/MicroblinkPlatform/microblink-platform-ios.git

### Clone

If you prefer not to use Swift Package Manager, you can integrate MicroblinkPlatform into your project manually.

Since the libraries are stored on [Git Large File Storage](https://git-lfs.github.com), you need to install git-lfs by running these commands:
```shell
brew install git-lfs
git lfs install
```

**Be sure to restart your console after installing Git LFS**

Manually import xcframeworks from `Frameworks` folder.

Additionally, clone [BlinkIDVerify repository](https://github.com/BlinkID/blinkid-verify-ios) to use `BlinkIDVerifyUX` and `BlinkIDVerify` xcframeworks.  

### UIKit

```swift
import MicroblinkPlatform
```

```swift
let serviceSettings = MicroblinkPlatformServiceSettings(
    workflowId: your-workflow-id,
    authProviderHost: your_host_url,
    additionalRequestHeaders: nil
)
        
let microblinkPlatform = MicroblinkPlatformSDK(
    serviceSettings: serviceSettings,
    delegate: self
)
        
let viewController = microblinkPlatform.startSDK()

present(viewController, animated: true)
```

Verification results are returned via `MicroblinkPlatformSDKDelegate`.

`MicroblinkPlatformResult` can be: accept, review, reject

```swift
func microblinkPlatformSDKDidFinish(viewController: UIViewController, result: MicroblinkPlatformResult) {
    viewController.dismiss(animated: true)
}
    
func microblinkPlatformSDKDidClose(viewController: UIViewController) {
    viewController.dismiss(animated: true)
}
```

### SwiftUI

```swift
import MicroblinkPlatform
```

```swift
struct ContentView: View {
    @State private var showSDK = false

    var body: some View {
        Button("Start SDK") {
            showSDK = true
        }
        .fullScreenCover(isPresented: $showSDK) {
            MicroblinkPlatformWrapperView(workflowId: your-workflow-id, authProviderHost: your_host_url, additionalRequestHeaders: nil ) { result in
                showSDK = false
            } onClose: {
                showSDK = false
            }
        }
    }
}
```

```swift
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
        let serviceSettings = MicroblinkPlatformServiceSettings(
            workflowId: workflowId,
            authProviderHost: authProviderHost,
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
            viewController.dismiss(animated: true) {
                self.onCompletion(result)
            }
        }

        func microblinkPlatformSDKDidClose(viewController: UIViewController) {
            viewController.dismiss(animated: true) {
                self.onClose()
            }
        }
    }
}
```

## Changing default strings

Copy `Localizable.xcstrings` file to your project from `Localization` folder.

Set bundle for `Localizable` file.

```swift
MicroblinkPlatformTheme.shared.localizationBundle = Bundle.main
```

## Customizing the look

It is not possible to move elements of the UI around, remove parts of the UI, or add new parts.

The MicroblinkPlatform SDK comes with the ability to customize some aspects of the UI by using the UI theming. The screens can be customized to fit your app’s look and feel by defining UI settings.

Customizations are done via `MicroblinkPlatformTheme`.

To change default blue tint, you can override primary color.

```swift
MicroblinkPlatformTheme.shared.primaryColor = your_color
```

To change image on main screen, you can override main screen image.

```swift
MicroblinkPlatformTheme.shared.mainScreenMainImage = your_image
```
To change font of title on main screen, you can override main screen title font.

```swift
MicroblinkPlatformTheme.shared.mainScreenTitleFont = your_font
```

To change button corner radius.

```swift
MicroblinkPlatformTheme.shared.buttonCornerRadius = your_corner_radius
```

<p align="center"><img src="Customizations/customization-1.jpg" alt="Customization 1" title="Customization 1"></p>
<p align="center"><img src="Customizations/customization-1.jpg" alt="Customization 1" title="Customization 1"></p>
<p align="center"><img src="Customizations/customization-2.jpg" alt="Customization 2" title="Customization 2"></p>
<p align="center"><img src="Customizations/customization-3.jpg" alt="Customization 3" title="Customization 3"></p>
<p align="center"><img src="Customizations/customization-4.jpg" alt="Customization 4" title="Customization 4"></p>
<p align="center"><img src="Customizations/customization-5.jpg" alt="Customization 5" title="Customization 5"></p>
