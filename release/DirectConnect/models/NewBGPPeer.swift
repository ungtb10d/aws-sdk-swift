// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a new BGP peer.</p>
public struct NewBGPPeer: Equatable {
    /// <p>The address family for the BGP peer.</p>
    public let addressFamily: AddressFamily?
    /// <p>The IP address assigned to the Amazon interface.</p>
    public let amazonAddress: String?
    /// <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    public let asn: Int
    /// <p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>
    public let authKey: String?
    /// <p>The IP address assigned to the customer interface.</p>
    public let customerAddress: String?

    public init (
        addressFamily: AddressFamily? = nil,
        amazonAddress: String? = nil,
        asn: Int = 0,
        authKey: String? = nil,
        customerAddress: String? = nil
    )
    {
        self.addressFamily = addressFamily
        self.amazonAddress = amazonAddress
        self.asn = asn
        self.authKey = authKey
        self.customerAddress = customerAddress
    }
}

extension NewBGPPeer: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NewBGPPeer(addressFamily: \(String(describing: addressFamily)), amazonAddress: \(String(describing: amazonAddress)), asn: \(String(describing: asn)), authKey: \(String(describing: authKey)), customerAddress: \(String(describing: customerAddress)))"}
}