// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about an AWS account and entity that performed an action on an affected resource. The action was performed using the credentials for your AWS account.</p>
public struct UserIdentityRoot: Equatable {
    /// <p>The unique identifier for the AWS account.</p>
    public let accountId: String?
    /// <p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user or role that performed the action.</p>
    public let arn: String?
    /// <p>The unique identifier for the entity that performed the action.</p>
    public let principalId: String?

    public init (
        accountId: String? = nil,
        arn: String? = nil,
        principalId: String? = nil
    )
    {
        self.accountId = accountId
        self.arn = arn
        self.principalId = principalId
    }
}

extension UserIdentityRoot: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UserIdentityRoot(accountId: \(String(describing: accountId)), arn: \(String(describing: arn)), principalId: \(String(describing: principalId)))"}
}