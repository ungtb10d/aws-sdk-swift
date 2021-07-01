// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /// <p>The keys of the tags to be removed.</p>
    public let tagKeys: [String]?
    /// <p>The ARN for the workload.</p>
    public let workloadArn: String?

    public init (
        tagKeys: [String]? = nil,
        workloadArn: String? = nil
    )
    {
        self.tagKeys = tagKeys
        self.workloadArn = workloadArn
    }
}

extension UntagResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UntagResourceInput(tagKeys: \(String(describing: tagKeys)), workloadArn: \(String(describing: workloadArn)))"}
}