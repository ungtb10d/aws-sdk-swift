// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Returns information about all brokers.
public struct BrokerInstance: Equatable {
    /// The URL of the broker's Web Console.
    public let consoleURL: String?
    /// The broker's wire-level protocol endpoints.
    public let endpoints: [String]?
    /// The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers
    public let ipAddress: String?

    public init (
        consoleURL: String? = nil,
        endpoints: [String]? = nil,
        ipAddress: String? = nil
    )
    {
        self.consoleURL = consoleURL
        self.endpoints = endpoints
        self.ipAddress = ipAddress
    }
}

extension BrokerInstance: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BrokerInstance(consoleURL: \(String(describing: consoleURL)), endpoints: \(String(describing: endpoints)), ipAddress: \(String(describing: ipAddress)))"}
}