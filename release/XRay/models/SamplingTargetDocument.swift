// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Temporary changes to a sampling rule configuration. To meet the global sampling target for a rule, X-Ray
///       calculates a new reservoir for each service based on the recent sampling results of all services that called <a>GetSamplingTargets</a>.</p>
public struct SamplingTargetDocument: Equatable {
    /// <p>The percentage of matching requests to instrument, after the reservoir is
    ///       exhausted.</p>
    public let fixedRate: Double
    /// <p>The number of seconds for the service to wait before getting sampling targets
    ///       again.</p>
    public let interval: Int?
    /// <p>The number of requests per second that X-Ray allocated for this service.</p>
    public let reservoirQuota: Int?
    /// <p>When the reservoir quota expires.</p>
    public let reservoirQuotaTTL: Date?
    /// <p>The name of the sampling rule.</p>
    public let ruleName: String?

    public init (
        fixedRate: Double = 0.0,
        interval: Int? = nil,
        reservoirQuota: Int? = nil,
        reservoirQuotaTTL: Date? = nil,
        ruleName: String? = nil
    )
    {
        self.fixedRate = fixedRate
        self.interval = interval
        self.reservoirQuota = reservoirQuota
        self.reservoirQuotaTTL = reservoirQuotaTTL
        self.ruleName = ruleName
    }
}

extension SamplingTargetDocument: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SamplingTargetDocument(fixedRate: \(String(describing: fixedRate)), interval: \(String(describing: interval)), reservoirQuota: \(String(describing: reservoirQuota)), reservoirQuotaTTL: \(String(describing: reservoirQuotaTTL)), ruleName: \(String(describing: ruleName)))"}
}