// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetWorkflowRunPropertiesInput: Equatable {
    /// <p>Name of the workflow which was run.</p>
    public let name: String?
    /// <p>The ID of the workflow run whose run properties should be returned.</p>
    public let runId: String?

    public init (
        name: String? = nil,
        runId: String? = nil
    )
    {
        self.name = name
        self.runId = runId
    }
}

extension GetWorkflowRunPropertiesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetWorkflowRunPropertiesInput(name: \(String(describing: name)), runId: \(String(describing: runId)))"}
}