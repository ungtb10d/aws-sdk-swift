// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateSoftwareUpdateJobOutputResponse: Equatable {
    /// The IoT Job ARN corresponding to this update.
    public let iotJobArn: String?
    /// The IoT Job Id corresponding to this update.
    public let iotJobId: String?
    /// The software version installed on the device or devices after the update.
    public let platformSoftwareVersion: String?

    public init (
        iotJobArn: String? = nil,
        iotJobId: String? = nil,
        platformSoftwareVersion: String? = nil
    )
    {
        self.iotJobArn = iotJobArn
        self.iotJobId = iotJobId
        self.platformSoftwareVersion = platformSoftwareVersion
    }
}

extension CreateSoftwareUpdateJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateSoftwareUpdateJobOutputResponse(iotJobArn: \(String(describing: iotJobArn)), iotJobId: \(String(describing: iotJobId)), platformSoftwareVersion: \(String(describing: platformSoftwareVersion)))"}
}