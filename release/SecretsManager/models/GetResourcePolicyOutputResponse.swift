// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetResourcePolicyOutputResponse: Equatable {
    /// <p>The ARN of the secret that the resource-based policy was retrieved for.</p>
    public let aRN: String?
    /// <p>The friendly name of the secret that the resource-based policy was retrieved for.</p>
    public let name: String?
    /// <p>A JSON-formatted string that describes the permissions that are associated with the
    ///       attached secret. These permissions are combined with any permissions that are associated with
    ///       the user or role that attempts to access this secret. The combined permissions specify who can
    ///       access the secret and what actions they can perform. For more information, see <a href="http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication and Access Control for
    ///         AWS Secrets Manager</a> in the <i>AWS Secrets Manager User Guide</i>.</p>
    public let resourcePolicy: String?

    public init (
        aRN: String? = nil,
        name: String? = nil,
        resourcePolicy: String? = nil
    )
    {
        self.aRN = aRN
        self.name = name
        self.resourcePolicy = resourcePolicy
    }
}

extension GetResourcePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourcePolicyOutputResponse(aRN: \(String(describing: aRN)), name: \(String(describing: name)), resourcePolicy: \(String(describing: resourcePolicy)))"}
}