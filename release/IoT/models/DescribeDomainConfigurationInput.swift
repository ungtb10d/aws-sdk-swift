// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDomainConfigurationInput: Equatable {
    /// <p>The name of the domain configuration.</p>
    public let domainConfigurationName: String?

    public init (
        domainConfigurationName: String? = nil
    )
    {
        self.domainConfigurationName = domainConfigurationName
    }
}

extension DescribeDomainConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDomainConfigurationInput(domainConfigurationName: \(String(describing: domainConfigurationName)))"}
}