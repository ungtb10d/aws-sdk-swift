// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and
///          the stack with which it's associated.</p>
public struct ChangeSetSummary: Equatable {
    /// <p>The ID of the change set.</p>
    public let changeSetId: String?
    /// <p>The name of the change set.</p>
    public let changeSetName: String?
    /// <p>The start time when the change set was created, in UTC.</p>
    public let creationTime: Date?
    /// <p>Descriptive information about the change set.</p>
    public let description: String?
    /// <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the
    ///          change set. If you can’t execute the change set, the status indicates why. For example, a
    ///          change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is
    ///          still creating it or in an <code>OBSOLETE</code> state because the stack was already
    ///          updated.</p>
    public let executionStatus: ExecutionStatus?
    /// <p>Specifies the current setting of <code>IncludeNestedStacks</code> for the change
    ///          set.</p>
    public let includeNestedStacks: Bool?
    /// <p>The parent change set ID.</p>
    public let parentChangeSetId: String?
    /// <p>The root change set ID.</p>
    public let rootChangeSetId: String?
    /// <p>The ID of the stack with which the change set is associated.</p>
    public let stackId: String?
    /// <p>The name of the stack with which the change set is associated.</p>
    public let stackName: String?
    /// <p>The state of the change set, such as <code>CREATE_IN_PROGRESS</code>,
    ///             <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
    public let status: ChangeSetStatus?
    /// <p>A description of the change set's status. For example, if your change set is in the
    ///             <code>FAILED</code> state, AWS CloudFormation shows the error message.</p>
    public let statusReason: String?

    public init (
        changeSetId: String? = nil,
        changeSetName: String? = nil,
        creationTime: Date? = nil,
        description: String? = nil,
        executionStatus: ExecutionStatus? = nil,
        includeNestedStacks: Bool? = nil,
        parentChangeSetId: String? = nil,
        rootChangeSetId: String? = nil,
        stackId: String? = nil,
        stackName: String? = nil,
        status: ChangeSetStatus? = nil,
        statusReason: String? = nil
    )
    {
        self.changeSetId = changeSetId
        self.changeSetName = changeSetName
        self.creationTime = creationTime
        self.description = description
        self.executionStatus = executionStatus
        self.includeNestedStacks = includeNestedStacks
        self.parentChangeSetId = parentChangeSetId
        self.rootChangeSetId = rootChangeSetId
        self.stackId = stackId
        self.stackName = stackName
        self.status = status
        self.statusReason = statusReason
    }
}

extension ChangeSetSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChangeSetSummary(changeSetId: \(String(describing: changeSetId)), changeSetName: \(String(describing: changeSetName)), creationTime: \(String(describing: creationTime)), description: \(String(describing: description)), executionStatus: \(String(describing: executionStatus)), includeNestedStacks: \(String(describing: includeNestedStacks)), parentChangeSetId: \(String(describing: parentChangeSetId)), rootChangeSetId: \(String(describing: rootChangeSetId)), stackId: \(String(describing: stackId)), stackName: \(String(describing: stackName)), status: \(String(describing: status)), statusReason: \(String(describing: statusReason)))"}
}