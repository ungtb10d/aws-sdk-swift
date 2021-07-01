// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateExperimentTemplateOutputResponse: Equatable {
    /// <p>Information about the experiment template.</p>
    public let experimentTemplate: ExperimentTemplate?

    public init (
        experimentTemplate: ExperimentTemplate? = nil
    )
    {
        self.experimentTemplate = experimentTemplate
    }
}

extension UpdateExperimentTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateExperimentTemplateOutputResponse(experimentTemplate: \(String(describing: experimentTemplate)))"}
}