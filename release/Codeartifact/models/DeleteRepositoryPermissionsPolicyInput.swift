// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteRepositoryPermissionsPolicyInput: Equatable {
    /// <p>
    ///         The name of the domain that contains the repository associated with the resource policy to be deleted.
    ///       </p>
    public let domain: String?
    /// <p>
    ///         The 12-digit account number of the AWS account that owns the domain. It does not include
    ///         dashes or spaces.
    ///       </p>
    public let domainOwner: String?
    /// <p>
    ///       The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
    ///       prevents others from accidentally overwriting your changes to the repository's resource policy.
    ///     </p>
    public let policyRevision: String?
    /// <p>
    ///       The name of the repository that is associated with the resource policy to be deleted
    ///     </p>
    public let repository: String?

    public init (
        domain: String? = nil,
        domainOwner: String? = nil,
        policyRevision: String? = nil,
        repository: String? = nil
    )
    {
        self.domain = domain
        self.domainOwner = domainOwner
        self.policyRevision = policyRevision
        self.repository = repository
    }
}

extension DeleteRepositoryPermissionsPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteRepositoryPermissionsPolicyInput(domain: \(String(describing: domain)), domainOwner: \(String(describing: domainOwner)), policyRevision: \(String(describing: policyRevision)), repository: \(String(describing: repository)))"}
}