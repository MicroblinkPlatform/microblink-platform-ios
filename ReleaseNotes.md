# Release notes

## v1.8.0
### New features
- Added support for overriding `scanUnsupportedBack` and `scanPassportDataPageOnly` on the Scan ID step

## v1.7.0
### Breaking changes
- The `MicroblinkPlatformServiceSettings` parameter has been updated:
    - Previously, for `url`, you provided the full API transaction endpoint for your proxy, for example: `https://www.myproxy.com/api/v1/transaction`.
    - Now, `url` accepts your proxy's base domain + API suffix, **without** the final URL path. For example: `https://www.myproxy.com/api/v1`.
- `MicroblinkPlatformConsent` now **requires** `givenOn`. This value (a `Date`) represents when the consent is given.
- In `MicroblinkPlatformSDKDelegate`, the function `microblinkPlatformSDKDidClose` is expanded with `cancelState`. This type (`MicroblinkPlatformCancelState`) has two values:
	- optional `transactionId`
	- `cancelReason` enum which returns `userCanceled` or `consentDenied`

### New features
- Added a consent screen which is shown if `isProcessingStoringAllowed` in `MicroblinkPlatformConsent` is `false`. This means that, if you haven't collected consent from your users and provided it to us, we will collect it ourselves.
- In `MicroblinkPlatformServiceSettings`, added new string properties for overriding proxy endpoints:
	- `getWorkflowInfo`
	- `startTransaction`
	- `cancelWorkflow`

## v1.5.0
### What's new
- We've added kiosk mode support. This is helpful in applications where a tablet device is mounted on a wall, and your users are expected to scan their documents using the front camera only. 
- You can now upload PDF files when using the manual input capability.

### Updates
We've updated our BlinkID Verify and BlinkCard dependencies:
- The "Scan & Verify ID" capability now uses BlinkID Verify 3.14.1.
- The "Scan Payment Card" capability now uses BlinkCard 2.12.0.

To read more about the new features supported by these upgrades, see the release notes for [BlinkID Verify](https://blinkidverify.docs.microblink.com/docs/docver/release-notes/release-notes) and [BlinkCard](https://blinkcard.docs.microblink.com/category/release-notes/).

## v1.4.2
### Breaking changes
- `MicroblinkPlatformServiceSettings` parameter update
    - The field `authProviderHost` has been renamed to `url`.
    - Previously, `authProviderHost` accepted only the base domain (e.g. `https://www.myapi.com`).
    - Now, url must include the full API transaction endpoint, for example: `https://www.myapi.com/api/v1/transaction`

## v1.4.1
### Improvements
- Improved extraction of first and middle names for certain ID types

## v1.4.0
### Improvements
- Face capture now performs additional validation checks:
	- Eyes closed
	- Image too dark
	- Face blurry
	- Mouth open
	- Sunglasses detected

- Improved card scanning performance and reliability
- Enhanced document extraction with additional extracted fields

## v1.3.0

### New features
- Added support for payment card scan capability
  - Result of payment card scan capability is returned via `func microblinkPlatformSDKDidFinishCardScanStep(viewController: UIViewController, cardScanResult: MicroblinkPlatformResultCardScanResult)` in `MicroblinkPlatformSDKDelegate`
  - `MicroblinkPlatformResultCardScanResult` includes the following fields: `cardNumber`, `expiryDate`, `owner`, `cvv`
- Added support for multiple steps of the same type

### Improvements
- Optimized internal request handling for improved performance

## v1.2.0
- Added support for Manual User input

## v1.1.0
- Added support for BlinkID

## v1.0.0
- MicroblinkPlatform iOS SDK initial release
