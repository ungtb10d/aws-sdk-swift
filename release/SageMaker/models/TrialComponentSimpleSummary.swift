// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A short summary of a trial component.</p>
public struct TrialComponentSimpleSummary: Equatable {
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let createdBy: UserContext?
    /// <p>When the component was created.</p>
    public let creationTime: Date?
    /// <p>The Amazon Resource Name (ARN) of the trial component.</p>
    public let trialComponentArn: String?
    /// <p>The name of the trial component.</p>
    public let trialComponentName: String?
    /// <p>The Amazon Resource Name (ARN) and job type of the source of a trial component.</p>
    public let trialComponentSource: TrialComponentSource?

    public init (
        createdBy: UserContext? = nil,
        creationTime: Date? = nil,
        trialComponentArn: String? = nil,
        trialComponentName: String? = nil,
        trialComponentSource: TrialComponentSource? = nil
    )
    {
        self.createdBy = createdBy
        self.creationTime = creationTime
        self.trialComponentArn = trialComponentArn
        self.trialComponentName = trialComponentName
        self.trialComponentSource = trialComponentSource
    }
}

extension TrialComponentSimpleSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrialComponentSimpleSummary(createdBy: \(String(describing: createdBy)), creationTime: \(String(describing: creationTime)), trialComponentArn: \(String(describing: trialComponentArn)), trialComponentName: \(String(describing: trialComponentName)), trialComponentSource: \(String(describing: trialComponentSource)))"}
}