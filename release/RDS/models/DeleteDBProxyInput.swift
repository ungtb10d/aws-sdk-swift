// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteDBProxyInput: Equatable {
    /// <p>The name of the DB proxy to delete.</p>
    public let dBProxyName: String?

    public init (
        dBProxyName: String? = nil
    )
    {
        self.dBProxyName = dBProxyName
    }
}

extension DeleteDBProxyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDBProxyInput(dBProxyName: \(String(describing: dBProxyName)))"}
}