// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListFailuresForLicenseConfigurationOperationsOutputResponse: Equatable {
    /// <p>License configuration operations that failed.</p>
    public let licenseOperationFailureList: [LicenseOperationFailure]?
    /// <p>Token for the next set of results.</p>
    public let nextToken: String?

    public init (
        licenseOperationFailureList: [LicenseOperationFailure]? = nil,
        nextToken: String? = nil
    )
    {
        self.licenseOperationFailureList = licenseOperationFailureList
        self.nextToken = nextToken
    }
}

extension ListFailuresForLicenseConfigurationOperationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFailuresForLicenseConfigurationOperationsOutputResponse(licenseOperationFailureList: \(String(describing: licenseOperationFailureList)), nextToken: \(String(describing: nextToken)))"}
}