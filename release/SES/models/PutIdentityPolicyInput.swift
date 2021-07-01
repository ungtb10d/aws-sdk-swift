// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to add or update a sending authorization policy for an identity.
///             Sending authorization is an Amazon SES feature that enables you to authorize other senders to
///             use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
///                 Guide</a>.</p>
public struct PutIdentityPolicyInput: Equatable {
    /// <p>The identity that the policy will apply to. You can specify an identity by using its
    ///             name or by using its Amazon Resource Name (ARN). Examples:
    ///             <code>user@example.com</code>, <code>example.com</code>,
    ///                 <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    ///         <p>To successfully call this API, you must own the identity.</p>
    public let identity: String?
    /// <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    ///         <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    ///                 Guide</a>. </p>
    public let policy: String?
    /// <p>The name of the policy.</p>
    ///         <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    ///             characters, dashes, and underscores.</p>
    public let policyName: String?

    public init (
        identity: String? = nil,
        policy: String? = nil,
        policyName: String? = nil
    )
    {
        self.identity = identity
        self.policy = policy
        self.policyName = policyName
    }
}

extension PutIdentityPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutIdentityPolicyInput(identity: \(String(describing: identity)), policy: \(String(describing: policy)), policyName: \(String(describing: policyName)))"}
}