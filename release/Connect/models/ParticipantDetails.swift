// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The customer's details.</p>
public struct ParticipantDetails: Equatable {
    /// <p>Display name of the participant.</p>
    public let displayName: String?

    public init (
        displayName: String? = nil
    )
    {
        self.displayName = displayName
    }
}

extension ParticipantDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParticipantDetails(displayName: \(String(describing: displayName)))"}
}