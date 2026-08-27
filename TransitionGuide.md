# Transition Guide

## v1.10.2
- No changes

## v1.10.1
- No changes

## v1.10.0
- No changes

## v1.9.0
- No changes

## v1.8.0
- No changes

## v1.7.0
### Breaking changes
- The `MicroblinkPlatformServiceSettings` parameter has been updated:
    - Previously, for `url`, you provided the full API transaction endpoint for your proxy, for example: `https://www.myproxy.com/api/v1/transaction`.
    - Now, `url` accepts your proxy's base domain + API suffix, **without** the final URL path. For example: `https://www.myproxy.com/api/v1`.

**Before**:
```
MicroblinkPlatformServiceSettings(
    workflowId: "myWorkflow",
    url: "https://www.myapi.com/api/v1/transaction",
    consent: consent,
    additionalRequestHeaders: nil
)
```

**Now**:
```
MicroblinkPlatformServiceSettings(
    workflowId: "myWorkflow",
    url: "https://www.myproxy.com/api/v1",
    consent: consent,
    additionalRequestHeaders: nil
)
```

- `MicroblinkPlatformConsent` now **requires** `givenOn`. This value (a `Date`) represents when the consent is given.

**Before**:
```
MicroblinkPlatformConsent(
    userId: userId,
    isProcessingStoringAllowed: true,
    isTrainingAllowed: true,
    note: nil
)
```

**Now**:
```
MicroblinkPlatformConsent(
    userId: userId,
    isProcessingStoringAllowed: true,
    isTrainingAllowed: true,
    isGivenOn: Date.now,
    note: nil
)
```

- In `MicroblinkPlatformSDKDelegate`, the function `microblinkPlatformSDKDidClose` is expanded with `cancelState`.

**Before**:
```
func microblinkPlatformSDKDidClose(viewController: UIViewController)
```

**Now**:
```
func microblinkPlatformSDKDidClose(viewController: UIViewController, cancelState: MicroblinkPlatformCancelState)
```

## v1.5.0
- No changes

## v1.4.2
- Before:
```
MicroblinkPlatformServiceSettings(
    workflowId: "myWorkflow",
    url: "https://www.myapi.com",
    consent: consent,
    additionalRequestHeaders: nil
)
```

- Now:
```
MicroblinkPlatformServiceSettings(
    workflowId: "myWorkflow",
    url: "https://www.myapi.com/api/v1/transaction",
    consent: consent,
    additionalRequestHeaders: nil
)
```

⚠️ This is a breaking change. All integrations must update to use the new url parameter with the full endpoint.

## v1.4.1
- No changes

## v1.4.0
- No changes

## v1.3.0
- No changes

## v1.2.0
- No changes

## v1.1.0
- No changes

## v1.0.0
- MicroblinkPlatform iOS SDK initial release
