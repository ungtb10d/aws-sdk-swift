// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The options that are available for an instance.</p>
public struct OrderableDBInstanceOption: Equatable {
    /// <p>A list of Availability Zones for an instance.</p>
    public let availabilityZones: [AvailabilityZone]?
    /// <p>The instance class for an instance.</p>
    public let dBInstanceClass: String?
    /// <p>The engine type of an instance.</p>
    public let engine: String?
    /// <p>The engine version of an instance.</p>
    public let engineVersion: String?
    /// <p>The license model for an instance.</p>
    public let licenseModel: String?
    /// <p>Indicates whether an instance is in a virtual private cloud (VPC).</p>
    public let vpc: Bool

    public init (
        availabilityZones: [AvailabilityZone]? = nil,
        dBInstanceClass: String? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        licenseModel: String? = nil,
        vpc: Bool = false
    )
    {
        self.availabilityZones = availabilityZones
        self.dBInstanceClass = dBInstanceClass
        self.engine = engine
        self.engineVersion = engineVersion
        self.licenseModel = licenseModel
        self.vpc = vpc
    }
}

extension OrderableDBInstanceOption: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OrderableDBInstanceOption(availabilityZones: \(String(describing: availabilityZones)), dBInstanceClass: \(String(describing: dBInstanceClass)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), licenseModel: \(String(describing: licenseModel)), vpc: \(String(describing: vpc)))"}
}