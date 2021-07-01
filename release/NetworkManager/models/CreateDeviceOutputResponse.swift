// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDeviceOutputResponse: Equatable {
    /// <p>Information about the device.</p>
    public let device: Device?

    public init (
        device: Device? = nil
    )
    {
        self.device = device
    }
}

extension CreateDeviceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDeviceOutputResponse(device: \(String(describing: device)))"}
}