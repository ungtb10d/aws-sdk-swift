// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAssessmentTemplateOutputResponse: Equatable {
    /// <p>The ARN that specifies the assessment template that is created.</p>
    public let assessmentTemplateArn: String?

    public init (
        assessmentTemplateArn: String? = nil
    )
    {
        self.assessmentTemplateArn = assessmentTemplateArn
    }
}

extension CreateAssessmentTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAssessmentTemplateOutputResponse(assessmentTemplateArn: \(String(describing: assessmentTemplateArn)))"}
}