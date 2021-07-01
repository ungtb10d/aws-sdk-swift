// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the processor used by the instance type.</p>
public struct ProcessorInfo: Equatable {
    /// <p>The architectures supported by the instance type.</p>
    public let supportedArchitectures: [ArchitectureType]?
    /// <p>The speed of the processor, in GHz.</p>
    public let sustainedClockSpeedInGhz: Double?

    public init (
        supportedArchitectures: [ArchitectureType]? = nil,
        sustainedClockSpeedInGhz: Double? = nil
    )
    {
        self.supportedArchitectures = supportedArchitectures
        self.sustainedClockSpeedInGhz = sustainedClockSpeedInGhz
    }
}

extension ProcessorInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProcessorInfo(supportedArchitectures: \(String(describing: supportedArchitectures)), sustainedClockSpeedInGhz: \(String(describing: sustainedClockSpeedInGhz)))"}
}