// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The evaluation results for the training of a model.</p>
public struct EvaluationResult: Equatable {
    /// <p>The F1 score for the evaluation of all labels. The F1 score metric evaluates the overall precision
    ///          and recall performance of the model as a single value. A higher value indicates better precision
    ///          and recall performance. A lower score indicates that precision, recall, or both are performing poorly.
    ///
    ///   </p>
    public let f1Score: Float?
    /// <p>The S3 bucket that contains the training summary.</p>
    public let summary: Summary?

    public init (
        f1Score: Float? = nil,
        summary: Summary? = nil
    )
    {
        self.f1Score = f1Score
        self.summary = summary
    }
}

extension EvaluationResult: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EvaluationResult(f1Score: \(String(describing: f1Score)), summary: \(String(describing: summary)))"}
}