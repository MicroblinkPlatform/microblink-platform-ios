# Release notes

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
