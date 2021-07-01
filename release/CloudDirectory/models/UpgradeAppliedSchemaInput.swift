// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpgradeAppliedSchemaInput: Equatable {
    /// <p>The ARN for the directory to which the upgraded schema will be applied.</p>
    public let directoryArn: String?
    /// <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
    public let dryRun: Bool
    /// <p>The revision of the published schema to upgrade the directory to.</p>
    public let publishedSchemaArn: String?

    public init (
        directoryArn: String? = nil,
        dryRun: Bool = false,
        publishedSchemaArn: String? = nil
    )
    {
        self.directoryArn = directoryArn
        self.dryRun = dryRun
        self.publishedSchemaArn = publishedSchemaArn
    }
}

extension UpgradeAppliedSchemaInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpgradeAppliedSchemaInput(directoryArn: \(String(describing: directoryArn)), dryRun: \(String(describing: dryRun)), publishedSchemaArn: \(String(describing: publishedSchemaArn)))"}
}