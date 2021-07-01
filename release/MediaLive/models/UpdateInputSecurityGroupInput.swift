// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow.
public struct UpdateInputSecurityGroupInput: Equatable {
    /// The id of the Input Security Group to update.
    public let inputSecurityGroupId: String?
    /// A collection of key-value pairs.
    public let tags: [String:String]?
    /// List of IPv4 CIDR addresses to whitelist
    public let whitelistRules: [InputWhitelistRuleCidr]?

    public init (
        inputSecurityGroupId: String? = nil,
        tags: [String:String]? = nil,
        whitelistRules: [InputWhitelistRuleCidr]? = nil
    )
    {
        self.inputSecurityGroupId = inputSecurityGroupId
        self.tags = tags
        self.whitelistRules = whitelistRules
    }
}

extension UpdateInputSecurityGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateInputSecurityGroupInput(inputSecurityGroupId: \(String(describing: inputSecurityGroupId)), tags: \(String(describing: tags)), whitelistRules: \(String(describing: whitelistRules)))"}
}