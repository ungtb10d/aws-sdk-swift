// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Retroactively applies an archive rule.</p>
public struct ApplyArchiveRuleInput: Equatable {
    /// <p>The Amazon resource name (ARN) of the analyzer.</p>
    public let analyzerArn: String?
    /// <p>A client token.</p>
    public var clientToken: String?
    /// <p>The name of the rule to apply.</p>
    public let ruleName: String?

    public init (
        analyzerArn: String? = nil,
        clientToken: String? = nil,
        ruleName: String? = nil
    )
    {
        self.analyzerArn = analyzerArn
        self.clientToken = clientToken
        self.ruleName = ruleName
    }
}

extension ApplyArchiveRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplyArchiveRuleInput(analyzerArn: \(String(describing: analyzerArn)), clientToken: \(String(describing: clientToken)), ruleName: \(String(describing: ruleName)))"}
}