// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RestoreTableFromBackupInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    public let backupArn: String?
    /// <p>The billing mode of the restored table.</p>
    public let billingModeOverride: BillingMode?
    /// <p>List of global secondary indexes for the restored table. The indexes
    ///         provided should match existing secondary indexes. You can choose to exclude
    ///         some or all of the indexes at the time of restore.</p>
    public let globalSecondaryIndexOverride: [GlobalSecondaryIndex]?
    /// <p>List of local secondary indexes for the restored table. The indexes
    ///         provided should match existing secondary indexes. You can choose to exclude
    ///         some or all of the indexes at the time of restore.</p>
    public let localSecondaryIndexOverride: [LocalSecondaryIndex]?
    /// <p>Provisioned throughput settings for the restored table.</p>
    public let provisionedThroughputOverride: ProvisionedThroughput?
    /// <p>The new server-side encryption settings for the restored table.</p>
    public let sSESpecificationOverride: SSESpecification?
    /// <p>The name of the new table to which the backup must be restored.</p>
    public let targetTableName: String?

    public init (
        backupArn: String? = nil,
        billingModeOverride: BillingMode? = nil,
        globalSecondaryIndexOverride: [GlobalSecondaryIndex]? = nil,
        localSecondaryIndexOverride: [LocalSecondaryIndex]? = nil,
        provisionedThroughputOverride: ProvisionedThroughput? = nil,
        sSESpecificationOverride: SSESpecification? = nil,
        targetTableName: String? = nil
    )
    {
        self.backupArn = backupArn
        self.billingModeOverride = billingModeOverride
        self.globalSecondaryIndexOverride = globalSecondaryIndexOverride
        self.localSecondaryIndexOverride = localSecondaryIndexOverride
        self.provisionedThroughputOverride = provisionedThroughputOverride
        self.sSESpecificationOverride = sSESpecificationOverride
        self.targetTableName = targetTableName
    }
}

extension RestoreTableFromBackupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RestoreTableFromBackupInput(backupArn: \(String(describing: backupArn)), billingModeOverride: \(String(describing: billingModeOverride)), globalSecondaryIndexOverride: \(String(describing: globalSecondaryIndexOverride)), localSecondaryIndexOverride: \(String(describing: localSecondaryIndexOverride)), provisionedThroughputOverride: \(String(describing: provisionedThroughputOverride)), sSESpecificationOverride: \(String(describing: sSESpecificationOverride)), targetTableName: \(String(describing: targetTableName)))"}
}