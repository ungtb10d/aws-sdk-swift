// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
public struct RequestCancelExternalWorkflowExecutionInitiatedEventAttributes: Equatable {
    /// <p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
    public let control: String?
    /// <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the
    ///       <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request.
    ///       This information can be useful for diagnosing problems by tracing back the chain of
    ///   events leading up to this event.</p>
    public let decisionTaskCompletedEventId: Int
    /// <p>The <code>runId</code> of the external workflow execution to be canceled.</p>
    public let runId: String?
    /// <p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>
    public let workflowId: String?

    public init (
        control: String? = nil,
        decisionTaskCompletedEventId: Int = 0,
        runId: String? = nil,
        workflowId: String? = nil
    )
    {
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.runId = runId
        self.workflowId = workflowId
    }
}

extension RequestCancelExternalWorkflowExecutionInitiatedEventAttributes: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes(control: \(String(describing: control)), decisionTaskCompletedEventId: \(String(describing: decisionTaskCompletedEventId)), runId: \(String(describing: runId)), workflowId: \(String(describing: workflowId)))"}
}