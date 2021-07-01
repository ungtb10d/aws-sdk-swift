// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct BatchDisableAlarmInput: Equatable {
    /// <p>The list of disable action requests. You can specify up to 10 requests per operation.</p>
    public let disableActionRequests: [DisableAlarmActionRequest]?

    public init (
        disableActionRequests: [DisableAlarmActionRequest]? = nil
    )
    {
        self.disableActionRequests = disableActionRequests
    }
}

extension BatchDisableAlarmInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchDisableAlarmInput(disableActionRequests: \(String(describing: disableActionRequests)))"}
}