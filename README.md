# NotarizationAuditLog

Swift structure to parse apple [notarization](https://developer.apple.com/documentation/xcode/notarizing_your_app_before_distribution) audit log.

```swift
let data: Data = ... // from file or command output
let auditLog = try JSONDecoder().decode(NotarizationAuditLog.self, from: data)
 ```

Example of audit log found on [apple website](https://developer.apple.com/documentation/xcode/notarizing_your_app_before_distribution/customizing_the_notarization_workflow)

```json
{
    "archiveFilename": "Overnight TextEditor.app",
    "issues": [
        {
            "message": "The signature of the binary is invalid.",
            "path": "Overnight TextEditor.app/Contents/MacOS/Overnight TextEditor",
            "severity": "error"
        }
    ],
    "jobId": "2EFE2717-52EF-43A5-96DC-0797E4CA1041",
    "logFormatVersion": 1,
    "status": "Invalid",
    "statusSummary": "Archive contains critical validation errors",
    "ticketContents": null,
    "uploadDate": "2018-07-02T20:32:01Z"
}
```
