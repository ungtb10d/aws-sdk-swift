// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies a scheduled task used to back up a selection of resources.</p>
public struct BackupRuleInput: Equatable {
    /// <p>A value in minutes after a backup job is successfully started before it must be
    ///          completed or it will be canceled by AWS Backup. This value is optional.</p>
    public let completionWindowMinutes: Int?
    /// <p>An array of <code>CopyAction</code> objects, which contains the details of the copy
    ///          operation.</p>
    public let copyActions: [CopyAction]?
    /// <p>Specifies whether AWS Backup creates continuous backups. True causes AWS Backup to
    ///          create continuous backups capable of point-in-time restore (PITR). False (or not specified)
    ///          causes AWS Backup to create snapshot backups.</p>
    public let enableContinuousBackup: Bool?
    /// <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    ///          it expires. AWS Backup will transition and expire backups automatically according to the
    ///          lifecycle that you define. </p>
    ///          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    ///          days. Therefore, the “expire after days” setting must be 90 days greater than the
    ///          “transition to cold after days” setting. The “transition to cold after days” setting cannot
    ///          be changed after a backup has been transitioned to cold. </p>
    ///          <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>
    public let lifecycle: Lifecycle?
    /// <p>To help organize your resources, you can assign your own metadata to the resources that
    ///          you create. Each tag is a key-value pair.</p>
    public let recoveryPointTags: [String:String]?
    /// <p>An optional display name for a backup rule.</p>
    public let ruleName: String?
    /// <p>A CRON expression specifying when AWS Backup initiates a backup job.</p>
    public let scheduleExpression: String?
    /// <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    ///          doesn't start successfully. This value is optional.</p>
    public let startWindowMinutes: Int?
    /// <p>The name of a logical container where backups are stored. Backup vaults are identified
    ///          by names that are unique to the account used to create them and the AWS Region where they
    ///          are created. They consist of lowercase letters, numbers, and hyphens.</p>
    public let targetBackupVaultName: String?

    public init (
        completionWindowMinutes: Int? = nil,
        copyActions: [CopyAction]? = nil,
        enableContinuousBackup: Bool? = nil,
        lifecycle: Lifecycle? = nil,
        recoveryPointTags: [String:String]? = nil,
        ruleName: String? = nil,
        scheduleExpression: String? = nil,
        startWindowMinutes: Int? = nil,
        targetBackupVaultName: String? = nil
    )
    {
        self.completionWindowMinutes = completionWindowMinutes
        self.copyActions = copyActions
        self.enableContinuousBackup = enableContinuousBackup
        self.lifecycle = lifecycle
        self.recoveryPointTags = recoveryPointTags
        self.ruleName = ruleName
        self.scheduleExpression = scheduleExpression
        self.startWindowMinutes = startWindowMinutes
        self.targetBackupVaultName = targetBackupVaultName
    }
}

extension BackupRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BackupRuleInput(completionWindowMinutes: \(String(describing: completionWindowMinutes)), copyActions: \(String(describing: copyActions)), enableContinuousBackup: \(String(describing: enableContinuousBackup)), lifecycle: \(String(describing: lifecycle)), recoveryPointTags: \(String(describing: recoveryPointTags)), ruleName: \(String(describing: ruleName)), scheduleExpression: \(String(describing: scheduleExpression)), startWindowMinutes: \(String(describing: startWindowMinutes)), targetBackupVaultName: \(String(describing: targetBackupVaultName)))"}
}