// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Adds or updates a tag on a given resource.</p>
public struct TagResourceInput: Equatable {
    /// <p>[Required] The ARN of a resource that can be tagged.</p>
    public let resourceArn: String?
    /// <p>[Required] The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    public let tags: [String:String]?

    public init (
        resourceArn: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tags = tags
    }
}

extension TagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagResourceInput(resourceArn: \(String(describing: resourceArn)), tags: \(String(describing: tags)))"}
}