// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagInput: Equatable {
    /// <p>The ARN of the resource group from which to remove tags. The command removed both the
    ///             specified keys and any values associated with those keys.</p>
    public let arn: String?
    /// <p>The keys of the tags to be removed.</p>
    public let keys: [String]?

    public init (
        arn: String? = nil,
        keys: [String]? = nil
    )
    {
        self.arn = arn
        self.keys = keys
    }
}

extension UntagInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UntagInput(arn: \(String(describing: arn)), keys: \(String(describing: keys)))"}
}