// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Nielsen Configuration
public struct NielsenConfiguration: Equatable {
    /// Enter the Distributor ID assigned to your organization by Nielsen.
    public let distributorId: String?
    /// Enables Nielsen PCM to ID3 tagging
    public let nielsenPcmToId3Tagging: NielsenPcmToId3TaggingState?

    public init (
        distributorId: String? = nil,
        nielsenPcmToId3Tagging: NielsenPcmToId3TaggingState? = nil
    )
    {
        self.distributorId = distributorId
        self.nielsenPcmToId3Tagging = nielsenPcmToId3Tagging
    }
}

extension NielsenConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NielsenConfiguration(distributorId: \(String(describing: distributorId)), nielsenPcmToId3Tagging: \(String(describing: nielsenPcmToId3Tagging)))"}
}