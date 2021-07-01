// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the Amazon WorkSpaces client.</p>
public struct ClientPropertiesResult: Equatable {
    /// <p>Information about the Amazon WorkSpaces client.</p>
    public let clientProperties: ClientProperties?
    /// <p>The resource identifier, in the form of a directory ID.</p>
    public let resourceId: String?

    public init (
        clientProperties: ClientProperties? = nil,
        resourceId: String? = nil
    )
    {
        self.clientProperties = clientProperties
        self.resourceId = resourceId
    }
}

extension ClientPropertiesResult: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ClientPropertiesResult(clientProperties: \(String(describing: clientProperties)), resourceId: \(String(describing: resourceId)))"}
}