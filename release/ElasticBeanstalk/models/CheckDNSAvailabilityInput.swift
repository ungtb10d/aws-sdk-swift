// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Results message indicating whether a CNAME is available.</p>
public struct CheckDNSAvailabilityInput: Equatable {
    /// <p>The prefix used when this CNAME is reserved.</p>
    public let cNAMEPrefix: String?

    public init (
        cNAMEPrefix: String? = nil
    )
    {
        self.cNAMEPrefix = cNAMEPrefix
    }
}

extension CheckDNSAvailabilityInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CheckDNSAvailabilityInput(cNAMEPrefix: \(String(describing: cNAMEPrefix)))"}
}