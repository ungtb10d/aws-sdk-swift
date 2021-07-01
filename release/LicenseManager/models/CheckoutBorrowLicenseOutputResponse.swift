// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CheckoutBorrowLicenseOutputResponse: Equatable {
    /// <p>Information about constraints.</p>
    public let checkoutMetadata: [Metadata]?
    /// <p>Allowed license entitlements.</p>
    public let entitlementsAllowed: [EntitlementData]?
    /// <p>Date and time at which the license checkout expires.</p>
    public let expiration: String?
    /// <p>Date and time at which the license checkout is issued.</p>
    public let issuedAt: String?
    /// <p>Amazon Resource Name (ARN) of the license.</p>
    public let licenseArn: String?
    /// <p>License consumption token.</p>
    public let licenseConsumptionToken: String?
    /// <p>Node ID.</p>
    public let nodeId: String?
    /// <p>Signed token.</p>
    public let signedToken: String?

    public init (
        checkoutMetadata: [Metadata]? = nil,
        entitlementsAllowed: [EntitlementData]? = nil,
        expiration: String? = nil,
        issuedAt: String? = nil,
        licenseArn: String? = nil,
        licenseConsumptionToken: String? = nil,
        nodeId: String? = nil,
        signedToken: String? = nil
    )
    {
        self.checkoutMetadata = checkoutMetadata
        self.entitlementsAllowed = entitlementsAllowed
        self.expiration = expiration
        self.issuedAt = issuedAt
        self.licenseArn = licenseArn
        self.licenseConsumptionToken = licenseConsumptionToken
        self.nodeId = nodeId
        self.signedToken = signedToken
    }
}

extension CheckoutBorrowLicenseOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CheckoutBorrowLicenseOutputResponse(checkoutMetadata: \(String(describing: checkoutMetadata)), entitlementsAllowed: \(String(describing: entitlementsAllowed)), expiration: \(String(describing: expiration)), issuedAt: \(String(describing: issuedAt)), licenseArn: \(String(describing: licenseArn)), licenseConsumptionToken: \(String(describing: licenseConsumptionToken)), nodeId: \(String(describing: nodeId)), signedToken: \(String(describing: signedToken)))"}
}