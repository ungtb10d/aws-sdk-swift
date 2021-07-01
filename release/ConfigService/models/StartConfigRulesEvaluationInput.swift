// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct StartConfigRulesEvaluationInput: Equatable {
    /// <p>The list of names of AWS Config rules that you want to run
    /// 			evaluations for.</p>
    public let configRuleNames: [String]?

    public init (
        configRuleNames: [String]? = nil
    )
    {
        self.configRuleNames = configRuleNames
    }
}

extension StartConfigRulesEvaluationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartConfigRulesEvaluationInput(configRuleNames: \(String(describing: configRuleNames)))"}
}