// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The Shutdown event configuration.</p>
public struct ShutdownEventConfiguration: Equatable {
    /// <p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain">Connection Draining</a>
    ///          </p>
    public let delayUntilElbConnectionsDrained: Bool?
    /// <p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>
    public let executionTimeout: Int?

    public init (
        delayUntilElbConnectionsDrained: Bool? = nil,
        executionTimeout: Int? = nil
    )
    {
        self.delayUntilElbConnectionsDrained = delayUntilElbConnectionsDrained
        self.executionTimeout = executionTimeout
    }
}

extension ShutdownEventConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ShutdownEventConfiguration(delayUntilElbConnectionsDrained: \(String(describing: delayUntilElbConnectionsDrained)), executionTimeout: \(String(describing: executionTimeout)))"}
}