// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateRealtimeLogConfigOutputResponse: Equatable {
    /// <p>A real-time log configuration.</p>
    public let realtimeLogConfig: RealtimeLogConfig?

    public init (
        realtimeLogConfig: RealtimeLogConfig? = nil
    )
    {
        self.realtimeLogConfig = realtimeLogConfig
    }
}

extension CreateRealtimeLogConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateRealtimeLogConfigOutputResponse(realtimeLogConfig: \(String(describing: realtimeLogConfig)))"}
}