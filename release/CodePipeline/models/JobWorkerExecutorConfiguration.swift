// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about the polling configuration for the <code>JobWorker</code> action engine,
///             or executor.</p>
public struct JobWorkerExecutorConfiguration: Equatable {
    /// <p>The accounts in which the job worker is configured and might poll for jobs as part of
    ///             the action execution.</p>
    public let pollingAccounts: [String]?
    /// <p>The service Principals in which the job worker is configured and might poll for jobs
    ///             as part of the action execution.</p>
    public let pollingServicePrincipals: [String]?

    public init (
        pollingAccounts: [String]? = nil,
        pollingServicePrincipals: [String]? = nil
    )
    {
        self.pollingAccounts = pollingAccounts
        self.pollingServicePrincipals = pollingServicePrincipals
    }
}

extension JobWorkerExecutorConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobWorkerExecutorConfiguration(pollingAccounts: \(String(describing: pollingAccounts)), pollingServicePrincipals: \(String(describing: pollingServicePrincipals)))"}
}