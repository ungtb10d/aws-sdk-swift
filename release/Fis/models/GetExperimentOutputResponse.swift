// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetExperimentOutputResponse: Equatable {
    /// <p>Information about the experiment.</p>
    public let experiment: Experiment?

    public init (
        experiment: Experiment? = nil
    )
    {
        self.experiment = experiment
    }
}

extension GetExperimentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetExperimentOutputResponse(experiment: \(String(describing: experiment)))"}
}