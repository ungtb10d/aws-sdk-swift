// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateScheduledAuditOutputResponse: Equatable {
    /// <p>The ARN of the scheduled audit.</p>
    public let scheduledAuditArn: String?

    public init (
        scheduledAuditArn: String? = nil
    )
    {
        self.scheduledAuditArn = scheduledAuditArn
    }
}

extension CreateScheduledAuditOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateScheduledAuditOutputResponse(scheduledAuditArn: \(String(describing: scheduledAuditArn)))"}
}