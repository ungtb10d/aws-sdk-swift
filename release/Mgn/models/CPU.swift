// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Source server CPU information.</p>
public struct CPU: Equatable {
    /// <p>The number of CPU cores on the source server.</p>
    public let cores: Int
    /// <p>The source server's CPU model name.</p>
    public let modelName: String?

    public init (
        cores: Int = 0,
        modelName: String? = nil
    )
    {
        self.cores = cores
        self.modelName = modelName
    }
}

extension CPU: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CPU(cores: \(String(describing: cores)), modelName: \(String(describing: modelName)))"}
}