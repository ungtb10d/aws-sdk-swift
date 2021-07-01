// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ProvisionByoipCidrInput: Equatable {
    /// <p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
    /// 			specify is /24. The address range cannot overlap with another address range that you've brought
    /// 			to this or another Region.</p>
    public let cidr: String?
    /// <p>A signed document that proves that you are authorized to bring the specified IP address range to
    /// 			Amazon using BYOIP.
    /// 		</p>
    public let cidrAuthorizationContext: CidrAuthorizationContext?

    public init (
        cidr: String? = nil,
        cidrAuthorizationContext: CidrAuthorizationContext? = nil
    )
    {
        self.cidr = cidr
        self.cidrAuthorizationContext = cidrAuthorizationContext
    }
}

extension ProvisionByoipCidrInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProvisionByoipCidrInput(cidr: \(String(describing: cidr)), cidrAuthorizationContext: \(String(describing: cidrAuthorizationContext)))"}
}