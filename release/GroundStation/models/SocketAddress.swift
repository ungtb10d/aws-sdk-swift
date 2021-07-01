// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the socket address.</p>
public struct SocketAddress: Equatable {
    /// <p>Name of a socket address.</p>
    public let name: String?
    /// <p>Port of a socket address.</p>
    public let port: Int?

    public init (
        name: String? = nil,
        port: Int? = nil
    )
    {
        self.name = name
        self.port = port
    }
}

extension SocketAddress: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SocketAddress(name: \(String(describing: name)), port: \(String(describing: port)))"}
}