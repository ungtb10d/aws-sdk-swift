// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetByteMatchSetInput: Equatable {
    /// <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by
    /// 			<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    public let byteMatchSetId: String?

    public init (
        byteMatchSetId: String? = nil
    )
    {
        self.byteMatchSetId = byteMatchSetId
    }
}

extension GetByteMatchSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetByteMatchSetInput(byteMatchSetId: \(String(describing: byteMatchSetId)))"}
}