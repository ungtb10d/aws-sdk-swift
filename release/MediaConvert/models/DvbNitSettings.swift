// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Use these settings to insert a DVB Network Information Table (NIT) in the transport stream of this output. When you work directly in your JSON job specification, include this object only when your job has a transport stream output and the container settings contain the object M2tsSettings.
public struct DvbNitSettings: Equatable {
    /// The numeric value placed in the Network Information Table (NIT).
    public let networkId: Int
    /// The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
    public let networkName: String?
    /// The number of milliseconds between instances of this table in the output transport stream.
    public let nitInterval: Int

    public init (
        networkId: Int = 0,
        networkName: String? = nil,
        nitInterval: Int = 0
    )
    {
        self.networkId = networkId
        self.networkName = networkName
        self.nitInterval = nitInterval
    }
}

extension DvbNitSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DvbNitSettings(networkId: \(String(describing: networkId)), networkName: \(String(describing: networkName)), nitInterval: \(String(describing: nitInterval)))"}
}