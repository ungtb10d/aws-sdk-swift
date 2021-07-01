// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetDeviceProfileInput: Equatable {
    /// <p>The ID of the resource to get.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension GetDeviceProfileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDeviceProfileInput(id: \(String(describing: id)))"}
}