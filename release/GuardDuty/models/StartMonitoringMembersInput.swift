// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartMonitoringMembersInput: Equatable {
    /// <p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>
    public let accountIds: [String]?
    /// <p>The unique ID of the detector of the GuardDuty administrator account associated with the member
    ///       accounts to monitor.</p>
    public let detectorId: String?

    public init (
        accountIds: [String]? = nil,
        detectorId: String? = nil
    )
    {
        self.accountIds = accountIds
        self.detectorId = detectorId
    }
}

extension StartMonitoringMembersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartMonitoringMembersInput(accountIds: \(String(describing: accountIds)), detectorId: \(String(describing: detectorId)))"}
}