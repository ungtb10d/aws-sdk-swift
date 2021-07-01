// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             The details of a violation event.
///         </p>
public struct ViolationEventAdditionalInfo: Equatable {
    /// <p>
    ///             The sensitivity of anomalous behavior evaluation. Can be <code>Low</code>, <code>Medium</code>, or <code>High</code>.
    ///         </p>
    public let confidenceLevel: ConfidenceLevel?

    public init (
        confidenceLevel: ConfidenceLevel? = nil
    )
    {
        self.confidenceLevel = confidenceLevel
    }
}

extension ViolationEventAdditionalInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ViolationEventAdditionalInfo(confidenceLevel: \(String(describing: confidenceLevel)))"}
}