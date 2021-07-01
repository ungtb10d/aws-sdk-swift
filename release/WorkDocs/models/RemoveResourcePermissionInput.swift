// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveResourcePermissionInput: Equatable {
    /// <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    public let authenticationToken: String?
    /// <p>The principal ID of the resource.</p>
    public let principalId: String?
    /// <p>The principal type of the resource.</p>
    public let principalType: PrincipalType?
    /// <p>The ID of the resource.</p>
    public let resourceId: String?

    public init (
        authenticationToken: String? = nil,
        principalId: String? = nil,
        principalType: PrincipalType? = nil,
        resourceId: String? = nil
    )
    {
        self.authenticationToken = authenticationToken
        self.principalId = principalId
        self.principalType = principalType
        self.resourceId = resourceId
    }
}

extension RemoveResourcePermissionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveResourcePermissionInput(authenticationToken: \(String(describing: authenticationToken)), principalId: \(String(describing: principalId)), principalType: \(String(describing: principalType)), resourceId: \(String(describing: resourceId)))"}
}