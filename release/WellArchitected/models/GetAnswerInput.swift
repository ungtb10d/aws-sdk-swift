// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to get answer.</p>
public struct GetAnswerInput: Equatable {
    /// <p>The alias of the lens, for example, <code>serverless</code>.</p>
    ///         <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    public let lensAlias: String?
    /// <p>The milestone number.</p>
    ///         <p>A workload can have a maximum of 100 milestones.</p>
    public let milestoneNumber: Int
    /// <p>The ID of the question.</p>
    public let questionId: String?
    /// <p>The ID assigned to the workload. This ID is unique within an AWS Region.</p>
    public let workloadId: String?

    public init (
        lensAlias: String? = nil,
        milestoneNumber: Int = 0,
        questionId: String? = nil,
        workloadId: String? = nil
    )
    {
        self.lensAlias = lensAlias
        self.milestoneNumber = milestoneNumber
        self.questionId = questionId
        self.workloadId = workloadId
    }
}

extension GetAnswerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAnswerInput(lensAlias: \(String(describing: lensAlias)), milestoneNumber: \(String(describing: milestoneNumber)), questionId: \(String(describing: questionId)), workloadId: \(String(describing: workloadId)))"}
}