// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateMacSecKeyOutputResponse: Equatable {
    /// <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    public let connectionId: String?
    /// <p>The MAC Security (MACsec) security keys no longer associated with the dedicated connection.</p>
    public let macSecKeys: [MacSecKey]?

    public init (
        connectionId: String? = nil,
        macSecKeys: [MacSecKey]? = nil
    )
    {
        self.connectionId = connectionId
        self.macSecKeys = macSecKeys
    }
}

extension DisassociateMacSecKeyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateMacSecKeyOutputResponse(connectionId: \(String(describing: connectionId)), macSecKeys: \(String(describing: macSecKeys)))"}
}