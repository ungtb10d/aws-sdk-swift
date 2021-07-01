// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateHyperParameterTuningJobOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the tuning job. Amazon SageMaker assigns an ARN to a
    ///             hyperparameter tuning job when you create it.</p>
    public let hyperParameterTuningJobArn: String?

    public init (
        hyperParameterTuningJobArn: String? = nil
    )
    {
        self.hyperParameterTuningJobArn = hyperParameterTuningJobArn
    }
}

extension CreateHyperParameterTuningJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateHyperParameterTuningJobOutputResponse(hyperParameterTuningJobArn: \(String(describing: hyperParameterTuningJobArn)))"}
}