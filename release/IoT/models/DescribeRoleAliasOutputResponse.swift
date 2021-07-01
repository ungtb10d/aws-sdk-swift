// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeRoleAliasOutputResponse: Equatable {
    /// <p>The role alias description.</p>
    public let roleAliasDescription: RoleAliasDescription?

    public init (
        roleAliasDescription: RoleAliasDescription? = nil
    )
    {
        self.roleAliasDescription = roleAliasDescription
    }
}

extension DescribeRoleAliasOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeRoleAliasOutputResponse(roleAliasDescription: \(String(describing: roleAliasDescription)))"}
}