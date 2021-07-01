// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAssessmentTargetsOutputResponse: Equatable {
    /// <p>Information about the assessment targets.</p>
    public let assessmentTargets: [AssessmentTarget]?
    /// <p>Assessment target details that cannot be described. An error code is provided for
    ///          each failed item.</p>
    public let failedItems: [String:FailedItemDetails]?

    public init (
        assessmentTargets: [AssessmentTarget]? = nil,
        failedItems: [String:FailedItemDetails]? = nil
    )
    {
        self.assessmentTargets = assessmentTargets
        self.failedItems = failedItems
    }
}

extension DescribeAssessmentTargetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAssessmentTargetsOutputResponse(assessmentTargets: \(String(describing: assessmentTargets)), failedItems: \(String(describing: failedItems)))"}
}