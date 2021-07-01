// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Oracle parameters.</p>
public struct OracleParameters: Equatable {
    /// <p>Database.</p>
    public let database: String?
    /// <p>An Oracle host.</p>
    public let host: String?
    /// <p>Port.</p>
    public let port: Int

    public init (
        database: String? = nil,
        host: String? = nil,
        port: Int = 0
    )
    {
        self.database = database
        self.host = host
        self.port = port
    }
}

extension OracleParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OracleParameters(database: \(String(describing: database)), host: \(String(describing: host)), port: \(String(describing: port)))"}
}