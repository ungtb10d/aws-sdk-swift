// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeDeviceOutputResponse: Equatable {
    /// <p>A description of the device.</p>
    public let description: String?
    /// <p>The Amazon Resource Name (ARN) of the device.</p>
    public let deviceArn: String?
    /// <p>The name of the fleet the device belongs to.</p>
    public let deviceFleetName: String?
    /// <p>The unique identifier of the device.</p>
    public let deviceName: String?
    /// <p>The AWS Internet of Things (IoT) object thing name associated with the device.</p>
    public let iotThingName: String?
    /// <p>The last heartbeat received from the device.</p>
    public let latestHeartbeat: Date?
    /// <p>The maximum number of models.</p>
    public let maxModels: Int
    /// <p>Models on the device.</p>
    public let models: [EdgeModel]?
    /// <p>The response from the last list when returning a list large enough to need tokening.</p>
    public let nextToken: String?
    /// <p>The timestamp of the last registration or de-reregistration.</p>
    public let registrationTime: Date?

    public init (
        description: String? = nil,
        deviceArn: String? = nil,
        deviceFleetName: String? = nil,
        deviceName: String? = nil,
        iotThingName: String? = nil,
        latestHeartbeat: Date? = nil,
        maxModels: Int = 0,
        models: [EdgeModel]? = nil,
        nextToken: String? = nil,
        registrationTime: Date? = nil
    )
    {
        self.description = description
        self.deviceArn = deviceArn
        self.deviceFleetName = deviceFleetName
        self.deviceName = deviceName
        self.iotThingName = iotThingName
        self.latestHeartbeat = latestHeartbeat
        self.maxModels = maxModels
        self.models = models
        self.nextToken = nextToken
        self.registrationTime = registrationTime
    }
}

extension DescribeDeviceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDeviceOutputResponse(description: \(String(describing: description)), deviceArn: \(String(describing: deviceArn)), deviceFleetName: \(String(describing: deviceFleetName)), deviceName: \(String(describing: deviceName)), iotThingName: \(String(describing: iotThingName)), latestHeartbeat: \(String(describing: latestHeartbeat)), maxModels: \(String(describing: maxModels)), models: \(String(describing: models)), nextToken: \(String(describing: nextToken)), registrationTime: \(String(describing: registrationTime)))"}
}