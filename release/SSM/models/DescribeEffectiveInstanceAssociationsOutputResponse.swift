// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeEffectiveInstanceAssociationsOutputResponse: Equatable {
    /// <p>The associations for the requested instance.</p>
    public let associations: [InstanceAssociation]?
    /// <p>The token to use when requesting the next set of items. If there are no additional items to
    ///    return, the string is empty.</p>
    public let nextToken: String?

    public init (
        associations: [InstanceAssociation]? = nil,
        nextToken: String? = nil
    )
    {
        self.associations = associations
        self.nextToken = nextToken
    }
}

extension DescribeEffectiveInstanceAssociationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEffectiveInstanceAssociationsOutputResponse(associations: \(String(describing: associations)), nextToken: \(String(describing: nextToken)))"}
}