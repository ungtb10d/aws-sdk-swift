// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteProfileOutputResponse: Equatable {
    /// <p>A message that indicates the delete request is done.</p>
    public let message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension DeleteProfileOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteProfileOutputResponse(message: \(String(describing: message)))"}
}