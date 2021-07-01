// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A summary of information about the attack.</p>
public struct SummarizedAttackVector: Equatable {
    /// <p>The list of counters that describe the details of the attack.</p>
    public let vectorCounters: [SummarizedCounter]?
    /// <p>The attack type, for example, SNMP reflection or SYN flood.</p>
    public let vectorType: String?

    public init (
        vectorCounters: [SummarizedCounter]? = nil,
        vectorType: String? = nil
    )
    {
        self.vectorCounters = vectorCounters
        self.vectorType = vectorType
    }
}

extension SummarizedAttackVector: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SummarizedAttackVector(vectorCounters: \(String(describing: vectorCounters)), vectorType: \(String(describing: vectorType)))"}
}