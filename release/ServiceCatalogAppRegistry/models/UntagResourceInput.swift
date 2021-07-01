// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /// <p>The Amazon resource name (ARN) that specifies the resource.</p>
    public let resourceArn: String?
    /// <p>A list of the tag keys to remove from the specified resource.</p>
    public let tagKeys: [String]?

    public init (
        resourceArn: String? = nil,
        tagKeys: [String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }
}

extension UntagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UntagResourceInput(resourceArn: \(String(describing: resourceArn)), tagKeys: \(String(describing: tagKeys)))"}
}