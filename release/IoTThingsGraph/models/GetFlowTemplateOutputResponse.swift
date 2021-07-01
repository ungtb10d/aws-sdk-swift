// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetFlowTemplateOutputResponse: Equatable {
    /// <p>The object that describes the specified workflow.</p>
    public let description: FlowTemplateDescription?

    public init (
        description: FlowTemplateDescription? = nil
    )
    {
        self.description = description
    }
}

extension GetFlowTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetFlowTemplateOutputResponse(description: \(String(describing: description)))"}
}