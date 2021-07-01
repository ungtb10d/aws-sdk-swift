// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateWebACLOutputResponse: Equatable {
    /// <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>
    public let summary: WebACLSummary?

    public init (
        summary: WebACLSummary? = nil
    )
    {
        self.summary = summary
    }
}

extension CreateWebACLOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateWebACLOutputResponse(summary: \(String(describing: summary)))"}
}