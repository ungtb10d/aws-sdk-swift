// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartServerInput: Equatable {
    /// <p>A system-assigned unique identifier for a server that you start.</p>
    public let serverId: String?

    public init (
        serverId: String? = nil
    )
    {
        self.serverId = serverId
    }
}

extension StartServerInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartServerInput(serverId: \(String(describing: serverId)))"}
}