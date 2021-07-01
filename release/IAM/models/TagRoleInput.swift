// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagRoleInput: Equatable {
    /// <p>The name of the IAM role to which you want to add tags.</p>
    ///          <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric
    ///     characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    public let roleName: String?
    /// <p>The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.</p>
    public let tags: [Tag]?

    public init (
        roleName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.roleName = roleName
        self.tags = tags
    }
}

extension TagRoleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagRoleInput(roleName: \(String(describing: roleName)), tags: \(String(describing: tags)))"}
}