// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RotateIngestEndpointCredentialsInput: Equatable {
    /// The ID of the channel the IngestEndpoint is on.
    public let id: String?
    /// The id of the IngestEndpoint whose credentials should be rotated
    public let ingestEndpointId: String?

    public init (
        id: String? = nil,
        ingestEndpointId: String? = nil
    )
    {
        self.id = id
        self.ingestEndpointId = ingestEndpointId
    }
}

extension RotateIngestEndpointCredentialsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RotateIngestEndpointCredentialsInput(id: \(String(describing: id)), ingestEndpointId: \(String(describing: ingestEndpointId)))"}
}