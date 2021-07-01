// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StopDiscovererInput: Equatable {
    /// <p>The ID of the discoverer.</p>
    public let discovererId: String?

    public init (
        discovererId: String? = nil
    )
    {
        self.discovererId = discovererId
    }
}

extension StopDiscovererInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopDiscovererInput(discovererId: \(String(describing: discovererId)))"}
}