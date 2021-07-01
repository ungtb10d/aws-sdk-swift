// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAddressesInput: Equatable {
    /// <p>[EC2-VPC] Information about the allocation IDs.</p>
    public let allocationIds: [String]?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>One or more filters. Filter names and values are case-sensitive.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>allocation-id</code> - [EC2-VPC] The allocation ID for the address.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>association-id</code> - [EC2-VPC] The association ID for the address.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>domain</code> - Indicates whether the address is for use in EC2-Classic (<code>standard</code>)
    ///               or in a VPC (<code>vpc</code>).</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>instance-id</code> - The ID of the instance the address is associated with, if any.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>network-border-group</code> -  A unique set of Availability Zones, Local Zones,
    ///           or Wavelength Zones from where AWS advertises IP addresses. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>network-interface-id</code> - [EC2-VPC] The ID of the network interface that the address is associated with, if any.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>network-interface-owner-id</code> - The AWS account ID of the owner.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>private-ip-address</code> - [EC2-VPC] The private IP address associated with the Elastic IP address.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>public-ip</code> - The Elastic IP address, or the carrier IP address.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>tag</code>:<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value.
    ///     For example, to find all resources that have a tag with the key <code>Owner</code> and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the filter name and <code>TeamA</code> for the filter value.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>tag-key</code> - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.</p>
    ///             </li>
    ///          </ul>
    public let filters: [Filter]?
    /// <p>One or more Elastic IP addresses.</p>
    ///          <p>Default: Describes all your Elastic IP addresses.</p>
    public let publicIps: [String]?

    public init (
        allocationIds: [String]? = nil,
        dryRun: Bool = false,
        filters: [Filter]? = nil,
        publicIps: [String]? = nil
    )
    {
        self.allocationIds = allocationIds
        self.dryRun = dryRun
        self.filters = filters
        self.publicIps = publicIps
    }
}

extension DescribeAddressesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAddressesInput(allocationIds: \(String(describing: allocationIds)), dryRun: \(String(describing: dryRun)), filters: \(String(describing: filters)), publicIps: \(String(describing: publicIps)))"}
}