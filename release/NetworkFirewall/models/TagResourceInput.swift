// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct TagResourceInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the resource.</p>
    public let resourceArn: String?
    /// <p></p>
    public let tags: [Tag]?

    public init (
        resourceArn: String? = nil,
        tags: [Tag]? = nil
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