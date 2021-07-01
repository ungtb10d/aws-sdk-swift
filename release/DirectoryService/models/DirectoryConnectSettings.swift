// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information for the <a>ConnectDirectory</a> operation when an AD
///       Connector directory is being created.</p>
public struct DirectoryConnectSettings: Equatable {
    /// <p>A list of one or more IP addresses of DNS servers or domain controllers in the on-premises
    ///       directory.</p>
    public let customerDnsIps: [String]?
    /// <p>The user name of an account in the on-premises directory that is used to connect to the
    ///       directory. This account must have the following permissions:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Read users and groups</p>
    ///             </li>
    ///             <li>
    ///                <p>Create computer objects</p>
    ///             </li>
    ///             <li>
    ///                <p>Join computers to the domain</p>
    ///             </li>
    ///          </ul>
    public let customerUserName: String?
    /// <p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>
    public let subnetIds: [String]?
    /// <p>The identifier of the VPC in which the AD Connector is created.</p>
    public let vpcId: String?

    public init (
        customerDnsIps: [String]? = nil,
        customerUserName: String? = nil,
        subnetIds: [String]? = nil,
        vpcId: String? = nil
    )
    {
        self.customerDnsIps = customerDnsIps
        self.customerUserName = customerUserName
        self.subnetIds = subnetIds
        self.vpcId = vpcId
    }
}

extension DirectoryConnectSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DirectoryConnectSettings(customerDnsIps: \(String(describing: customerDnsIps)), customerUserName: \(String(describing: customerUserName)), subnetIds: \(String(describing: subnetIds)), vpcId: \(String(describing: vpcId)))"}
}