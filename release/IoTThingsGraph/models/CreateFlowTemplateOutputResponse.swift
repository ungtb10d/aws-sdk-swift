// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateFlowTemplateOutputResponse: Equatable {
    /// <p>The summary object that describes the created workflow.</p>
    public let summary: FlowTemplateSummary?

    public init (
        summary: FlowTemplateSummary? = nil
    )
    {
        self.summary = summary
    }
}

extension CreateFlowTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFlowTemplateOutputResponse(summary: \(String(describing: summary)))"}
}