// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ReplaceNetworkAclAssociationInput: Equatable {
    /// <p>The ID of the current association between the original network ACL and the subnet.</p>
    public let associationId: String?
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the new network ACL to associate with the subnet.</p>
    public let networkAclId: String?

    public init (
        associationId: String? = nil,
        dryRun: Bool = false,
        networkAclId: String? = nil
    )
    {
        self.associationId = associationId
        self.dryRun = dryRun
        self.networkAclId = networkAclId
    }
}

extension ReplaceNetworkAclAssociationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplaceNetworkAclAssociationInput(associationId: \(String(describing: associationId)), dryRun: \(String(describing: dryRun)), networkAclId: \(String(describing: networkAclId)))"}
}