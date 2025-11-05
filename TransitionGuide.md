# Transition Guide

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
