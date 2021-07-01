// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTagsForResourceInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) for which to list the tags. For example:</p>
    ///          <p>
    ///             <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>
    ///          </p>
    public let resourceArn: String?

    public init (
        resourceArn: String? = nil
    )
    {
        self.resourceArn = resourceArn
    }
}

extension ListTagsForResourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTagsForResourceInput(resourceArn: \(String(describing: resourceArn)))"}
}