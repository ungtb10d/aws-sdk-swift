// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSkillGroupInput: Equatable {
    /// <p>A unique, user-specified identifier for this request that ensures idempotency.
    ///       </p>
    public var clientRequestToken: String?
    /// <p>The description for the skill group.</p>
    public let description: String?
    /// <p>The name for the skill group.</p>
    public let skillGroupName: String?
    /// <p>The tags for the skill group.</p>
    public let tags: [Tag]?

    public init (
        clientRequestToken: String? = nil,
        description: String? = nil,
        skillGroupName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.description = description
        self.skillGroupName = skillGroupName
        self.tags = tags
    }
}

extension CreateSkillGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSkillGroupInput(clientRequestToken: \(String(describing: clientRequestToken)), description: \(String(describing: description)), skillGroupName: \(String(describing: skillGroupName)), tags: \(String(describing: tags)))"}
}