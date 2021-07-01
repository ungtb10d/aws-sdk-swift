// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDiscovererInput: Equatable {
    /// <p>The description of the discoverer to update.</p>
    public let description: String?
    /// <p>The ID of the discoverer.</p>
    public let discovererId: String?

    public init (
        description: String? = nil,
        discovererId: String? = nil
    )
    {
        self.description = description
        self.discovererId = discovererId
    }
}

extension UpdateDiscovererInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDiscovererInput(description: \(String(describing: description)), discovererId: \(String(describing: discovererId)))"}
}