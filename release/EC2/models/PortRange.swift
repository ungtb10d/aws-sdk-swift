// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a range of ports.</p>
public struct PortRange: Equatable {
    /// <p>The first port in the range.</p>
    public let from: Int
    /// <p>The last port in the range.</p>
    public let to: Int

    public init (
        from: Int = 0,
        to: Int = 0
    )
    {
        self.from = from
        self.to = to
    }
}

extension PortRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PortRange(from: \(String(describing: from)), to: \(String(describing: to)))"}
}