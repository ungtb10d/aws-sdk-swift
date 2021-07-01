// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RotateEncryptionKeyOutputResponse: Equatable {
    /// <p>Describes a cluster.</p>
    public let cluster: Cluster?

    public init (
        cluster: Cluster? = nil
    )
    {
        self.cluster = cluster
    }
}

extension RotateEncryptionKeyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RotateEncryptionKeyOutputResponse(cluster: \(String(describing: cluster)))"}
}