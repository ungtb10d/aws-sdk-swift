// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct EnableHostedZoneDNSSECInput: Equatable {
    /// <p>A unique string used to identify a hosted zone.</p>
    public let hostedZoneId: String?

    public init (
        hostedZoneId: String? = nil
    )
    {
        self.hostedZoneId = hostedZoneId
    }
}

extension EnableHostedZoneDNSSECInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EnableHostedZoneDNSSECInput(hostedZoneId: \(String(describing: hostedZoneId)))"}
}