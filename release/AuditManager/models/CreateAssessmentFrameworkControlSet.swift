// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
/// A <code>controlSet</code> entity that represents a collection of controls in AWS Audit Manager. This does not contain the control set ID.
/// </p>
public struct CreateAssessmentFrameworkControlSet: Equatable {
    /// <p>
    ///    The list of controls within the control set. This does not contain the control set ID.
    /// </p>
    public let controls: [CreateAssessmentFrameworkControl]?
    /// <p>
    /// The name of the specified control set.
    /// </p>
    public let name: String?

    public init (
        controls: [CreateAssessmentFrameworkControl]? = nil,
        name: String? = nil
    )
    {
        self.controls = controls
        self.name = name
    }
}

extension CreateAssessmentFrameworkControlSet: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAssessmentFrameworkControlSet(controls: \(String(describing: controls)), name: \(String(describing: name)))"}
}