// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct CreateDBClusterInput: Equatable {
    /// <p>A list of Availability Zones (AZs) where instances in the DB cluster can be created. For information on
    ///             AWS Regions and Availability Zones, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html">Choosing the Regions and
    ///                 Availability Zones</a> in the <i>Amazon Aurora User Guide</i>.
    ///         </p>
    public let availabilityZones: [String]?
    /// <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    ///             0. </p>
    ///         <note>
    ///             <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
    ///         </note>
    ///          <p>Default: 0</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    ///             </li>
    ///          </ul>
    public let backtrackWindow: Int?
    /// <p>The number of days for which automated backups are retained.</p>
    ///          <p>Default: 1</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must be a value from 1 to 35</p>
    ///             </li>
    ///          </ul>
    public let backupRetentionPeriod: Int?
    /// <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
    public let characterSetName: String?
    /// <p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster.
    ///             The default is not to copy them.</p>
    public let copyTagsToSnapshot: Bool?
    /// <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    ///             </li>
    ///          </ul>
    ///          <p>Example: <code>my-cluster1</code>
    ///          </p>
    public let dBClusterIdentifier: String?
    /// <p>
    ///             The name of the DB cluster parameter group to associate
    ///             with this DB cluster. If you do not specify a value, then
    ///           the default DB cluster parameter group for the specified DB engine and version is used.
    ///         </p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
    ///             </li>
    ///          </ul>
    public let dBClusterParameterGroupName: String?
    /// <p>A DB subnet group to associate with this DB cluster.</p>
    ///          <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    ///          <p>Example: <code>mySubnetgroup</code>
    ///          </p>
    public let dBSubnetGroupName: String?
    /// <p>The name for your database of up to 64 alphanumeric characters. If you do not
    ///             provide a name, Amazon RDS doesn't create a database in the DB cluster you are
    ///             creating.</p>
    public let databaseName: String?
    /// <p>A value that indicates whether the DB cluster has deletion protection enabled.
    ///             The database can't be deleted when deletion protection is enabled. By default,
    ///             deletion protection is disabled.</p>
    public let deletionProtection: Bool?
    /// <p>The Active Directory directory ID to create the DB cluster in.</p>
    ///          <p>
    ///          For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
    ///          For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos Authentication</a>
    ///          in the <i>Amazon Aurora User Guide</i>.
    ///        </p>
    public let domain: String?
    /// <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    public let domainIAMRoleName: String?
    /// <p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values
    ///             in the list depend on the DB engine being used. For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    ///         <p>
    ///             <b>Aurora MySQL</b>
    ///         </p>
    ///         <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.
    ///         </p>
    ///         <p>
    ///             <b>Aurora PostgreSQL</b>
    ///         </p>
    ///         <p>Possible value is <code>postgresql</code>.
    ///         </p>
    public let enableCloudwatchLogsExports: [String]?
    /// <p>A value that indicates whether to enable this DB cluster to forward write operations to the primary cluster of an
    ///       Aurora global database (<a>GlobalCluster</a>). By default, write operations are not allowed on Aurora DB clusters that
    ///       are secondary clusters in an Aurora global database.</p>
    ///          <p>You can set this value only on Aurora DB clusters that are members of an Aurora global database. With this parameter
    ///       enabled, a secondary cluster can forward writes to the current primary cluster and the resulting changes are replicated back to
    ///       this cluster. For the primary DB cluster of an Aurora global database, this value is used immediately if the
    ///         primary is demoted by the <a>FailoverGlobalCluster</a> API operation, but it does nothing until then.
    ///     </p>
    public let enableGlobalWriteForwarding: Bool?
    /// <p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless DB cluster. By default, the HTTP endpoint
    ///             is disabled.</p>
    ///         <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
    ///             SQL queries on the Aurora Serverless DB cluster. You can also query your database
    ///             from inside the RDS console with the query editor.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API for Aurora Serverless</a> in the
    ///             <i>Amazon Aurora User Guide</i>.</p>
    public let enableHttpEndpoint: Bool?
    /// <p>A value that indicates whether to enable mapping of AWS Identity and Access
    ///             Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
    ///
    ///         <p>For more information, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    ///                 IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
    ///          </p>
    public let enableIAMDatabaseAuthentication: Bool?
    /// <p>The name of the database engine to be used for this DB cluster.</p>
    ///          <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), and <code>aurora-postgresql</code>
    ///          </p>
    public let engine: String?
    /// <p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
    ///             <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
    ///         <p>The <code>parallelquery</code> engine mode isn't required for Aurora MySQL version 1.23 and higher 1.x versions,
    ///             and version 2.09 and higher 2.x versions.</p>
    ///         <p>The <code>global</code> engine mode isn't required for Aurora MySQL version 1.22 and higher 1.x versions,
    ///             and <code>global</code> engine mode isn't required for any 2.x versions.</p>
    ///         <p>The <code>multimaster</code> engine mode only applies for DB clusters created with Aurora MySQL version 5.6.10a.</p>
    ///         <p>For Aurora PostgreSQL, the <code>global</code> engine mode isn't required, and both the <code>parallelquery</code>
    ///             and the <code>multimaster</code> engine modes currently aren't supported.</p>
    ///         <p>Limitations and requirements apply to some DB engine modes. For more information, see the
    ///             following sections in the <i>Amazon Aurora User Guide</i>:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations">
    ///                         Limitations of Aurora Serverless</a>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations">
    ///                         Limitations of Parallel Query</a>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations">
    ///                         Limitations of Aurora Global Databases</a>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations">
    ///                         Limitations of Multi-Master Clusters</a>
    ///                 </p>
    ///             </li>
    ///          </ul>
    public let engineMode: String?
    /// <p>The version number of the database engine to use.</p>
    ///          <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
    ///          <p>
    ///             <code>aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"</code>
    ///          </p>
    ///          <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
    ///          <p>
    ///             <code>aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"</code>
    ///          </p>
    ///          <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
    ///          <p>
    ///             <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"</code>
    ///          </p>
    ///          <p>
    ///             <b>Aurora MySQL</b>
    ///          </p>
    ///          <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code>
    ///          </p>
    ///          <p>
    ///             <b>Aurora PostgreSQL</b>
    ///          </p>
    ///          <p>Example: <code>9.6.3</code>, <code>10.7</code>
    ///          </p>
    public let engineVersion: String?
    /// <p>
    ///         The global cluster ID of an Aurora cluster that becomes the primary cluster
    ///         in the new global database cluster.
    ///       </p>
    public let globalClusterIdentifier: String?
    /// <p>The AWS KMS key identifier for an encrypted DB cluster.</p>
    ///         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
    ///                  To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
    ///         <p>When a CMK isn't specified in <code>KmsKeyId</code>:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted
    ///                     source, then Amazon RDS will use the CMK used to encrypt the
    ///                     source. Otherwise, Amazon RDS will use your default CMK. </p>
    ///             </li>
    ///             <li>
    ///                 <p>If the <code>StorageEncrypted</code> parameter is enabled and
    ///                         <code>ReplicationSourceIdentifier</code> isn't specified, then Amazon RDS
    ///                     will use your default CMK.</p>
    ///             </li>
    ///          </ul>
    ///         <p>There is a default CMK for your AWS account. Your AWS account
    ///             has a different default CMK for each AWS Region.</p>
    ///         <p>If you create a read replica of an encrypted DB cluster in another AWS Region, you
    ///             must set <code>KmsKeyId</code> to a AWS KMS key identifier that is valid in the destination AWS
    ///             Region. This CMK is used to encrypt the read replica in that AWS Region.</p>
    public let kmsKeyId: String?
    /// <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p>
    ///          <p>Constraints: Must contain from 8 to 41 characters.</p>
    public let masterUserPassword: String?
    /// <p>The name of the master user for the DB cluster.</p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must be 1 to 16 letters or numbers.</p>
    ///             </li>
    ///             <li>
    ///                <p>First character must be a letter.</p>
    ///             </li>
    ///             <li>
    ///                <p>Can't be a reserved word for the chosen database engine.</p>
    ///             </li>
    ///          </ul>
    public let masterUsername: String?
    /// <p>A value that indicates that the DB cluster should be associated with the specified option group.</p>
    ///          <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>
    public let optionGroupName: String?
    /// <p>The port number on which the instances in the DB cluster accept connections.</p>
    ///          <p>
    ///             Default: <code>3306</code> if engine is set as aurora or <code>5432</code> if set to aurora-postgresql.
    ///       </p>
    public let port: Int?
    /// <p>A URL that contains a Signature Version 4 signed request for
    ///             the <code>CreateDBCluster</code> action to be called in the source AWS Region where the DB cluster is replicated from.
    ///             You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p>
    ///
    ///         <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action
    ///             that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.</p>
    ///         <p>The pre-signed URL request must contain the following parameter values:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of
    ///                 the DB cluster in the destination AWS Region. This should refer to the same AWS KMS CMK for both the <code>CreateDBCluster</code>
    ///                 action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>DestinationRegion</code> - The name of the AWS Region that Aurora read replica will
    ///                     be created in.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied.
    ///                 This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an
    ///                 encrypted DB cluster from the us-west-2 AWS Region, then your <code>ReplicationSourceIdentifier</code> would look like
    ///                 Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p>
    ///             </li>
    ///          </ul>
    ///
    ///         <p>To learn how to generate a Signature Version 4 signed request, see
    ///             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">
    ///                 Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and
    ///             <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">
    ///                 Signature Version 4 Signing Process</a>.</p>
    ///         <note>
    ///             <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI)
    ///                 instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid
    ///                 request for the operation that can be executed in the source AWS Region.</p>
    ///         </note>
    public let preSignedUrl: String?
    /// <p>The daily time range during which automated backups are created
    ///         if automated backups are enabled
    ///         using the <code>BackupRetentionPeriod</code> parameter.
    ///         </p>
    ///          <p>The default is a 30-minute window selected at random from an
    ///         8-hour block of time for each AWS Region.
    ///         To view the time blocks available, see
    ///         <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow">
    ///             Backup window</a> in the <i>Amazon Aurora User Guide.</i>
    ///         </p>
    ///          <p>Constraints:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be in Universal Coordinated Time (UTC).</p>
    ///             </li>
    ///             <li>
    ///                <p>Must not conflict with the preferred maintenance window.</p>
    ///             </li>
    ///             <li>
    ///                <p>Must be at least 30 minutes.</p>
    ///             </li>
    ///          </ul>
    public let preferredBackupWindow: String?
    /// <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    ///          <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    ///          </p>
    ///          <p>The default is a 30-minute window selected at random from an
    ///             8-hour block of time for each AWS Region, occurring on a random day of the
    ///             week. To see the time blocks available, see
    ///             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora">
    ///                 Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i>
    ///         </p>
    ///          <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    ///          <p>Constraints: Minimum 30-minute window.</p>
    public let preferredMaintenanceWindow: String?
    /// <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB
    ///             cluster is created as a read replica.</p>
    public let replicationSourceIdentifier: String?
    /// <p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>
    public let scalingConfiguration: ScalingConfiguration?
    /// <p>A value that indicates whether the DB cluster is encrypted.</p>
    public let storageEncrypted: Bool?
    /// <p>Tags to assign to the DB cluster.</p>
    public let tags: [Tag]?
    /// <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
    public let vpcSecurityGroupIds: [String]?

    public init (
        availabilityZones: [String]? = nil,
        backtrackWindow: Int? = nil,
        backupRetentionPeriod: Int? = nil,
        characterSetName: String? = nil,
        copyTagsToSnapshot: Bool? = nil,
        dBClusterIdentifier: String? = nil,
        dBClusterParameterGroupName: String? = nil,
        dBSubnetGroupName: String? = nil,
        databaseName: String? = nil,
        deletionProtection: Bool? = nil,
        domain: String? = nil,
        domainIAMRoleName: String? = nil,
        enableCloudwatchLogsExports: [String]? = nil,
        enableGlobalWriteForwarding: Bool? = nil,
        enableHttpEndpoint: Bool? = nil,
        enableIAMDatabaseAuthentication: Bool? = nil,
        engine: String? = nil,
        engineMode: String? = nil,
        engineVersion: String? = nil,
        globalClusterIdentifier: String? = nil,
        kmsKeyId: String? = nil,
        masterUserPassword: String? = nil,
        masterUsername: String? = nil,
        optionGroupName: String? = nil,
        port: Int? = nil,
        preSignedUrl: String? = nil,
        preferredBackupWindow: String? = nil,
        preferredMaintenanceWindow: String? = nil,
        replicationSourceIdentifier: String? = nil,
        scalingConfiguration: ScalingConfiguration? = nil,
        storageEncrypted: Bool? = nil,
        tags: [Tag]? = nil,
        vpcSecurityGroupIds: [String]? = nil
    )
    {
        self.availabilityZones = availabilityZones
        self.backtrackWindow = backtrackWindow
        self.backupRetentionPeriod = backupRetentionPeriod
        self.characterSetName = characterSetName
        self.copyTagsToSnapshot = copyTagsToSnapshot
        self.dBClusterIdentifier = dBClusterIdentifier
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.dBSubnetGroupName = dBSubnetGroupName
        self.databaseName = databaseName
        self.deletionProtection = deletionProtection
        self.domain = domain
        self.domainIAMRoleName = domainIAMRoleName
        self.enableCloudwatchLogsExports = enableCloudwatchLogsExports
        self.enableGlobalWriteForwarding = enableGlobalWriteForwarding
        self.enableHttpEndpoint = enableHttpEndpoint
        self.enableIAMDatabaseAuthentication = enableIAMDatabaseAuthentication
        self.engine = engine
        self.engineMode = engineMode
        self.engineVersion = engineVersion
        self.globalClusterIdentifier = globalClusterIdentifier
        self.kmsKeyId = kmsKeyId
        self.masterUserPassword = masterUserPassword
        self.masterUsername = masterUsername
        self.optionGroupName = optionGroupName
        self.port = port
        self.preSignedUrl = preSignedUrl
        self.preferredBackupWindow = preferredBackupWindow
        self.preferredMaintenanceWindow = preferredMaintenanceWindow
        self.replicationSourceIdentifier = replicationSourceIdentifier
        self.scalingConfiguration = scalingConfiguration
        self.storageEncrypted = storageEncrypted
        self.tags = tags
        self.vpcSecurityGroupIds = vpcSecurityGroupIds
    }
}

extension CreateDBClusterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDBClusterInput(availabilityZones: \(String(describing: availabilityZones)), backtrackWindow: \(String(describing: backtrackWindow)), backupRetentionPeriod: \(String(describing: backupRetentionPeriod)), characterSetName: \(String(describing: characterSetName)), copyTagsToSnapshot: \(String(describing: copyTagsToSnapshot)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), dBClusterParameterGroupName: \(String(describing: dBClusterParameterGroupName)), dBSubnetGroupName: \(String(describing: dBSubnetGroupName)), databaseName: \(String(describing: databaseName)), deletionProtection: \(String(describing: deletionProtection)), domain: \(String(describing: domain)), domainIAMRoleName: \(String(describing: domainIAMRoleName)), enableCloudwatchLogsExports: \(String(describing: enableCloudwatchLogsExports)), enableGlobalWriteForwarding: \(String(describing: enableGlobalWriteForwarding)), enableHttpEndpoint: \(String(describing: enableHttpEndpoint)), enableIAMDatabaseAuthentication: \(String(describing: enableIAMDatabaseAuthentication)), engine: \(String(describing: engine)), engineMode: \(String(describing: engineMode)), engineVersion: \(String(describing: engineVersion)), globalClusterIdentifier: \(String(describing: globalClusterIdentifier)), kmsKeyId: \(String(describing: kmsKeyId)), masterUserPassword: \(String(describing: masterUserPassword)), masterUsername: \(String(describing: masterUsername)), optionGroupName: \(String(describing: optionGroupName)), port: \(String(describing: port)), preSignedUrl: \(String(describing: preSignedUrl)), preferredBackupWindow: \(String(describing: preferredBackupWindow)), preferredMaintenanceWindow: \(String(describing: preferredMaintenanceWindow)), replicationSourceIdentifier: \(String(describing: replicationSourceIdentifier)), scalingConfiguration: \(String(describing: scalingConfiguration)), storageEncrypted: \(String(describing: storageEncrypted)), tags: \(String(describing: tags)), vpcSecurityGroupIds: \(String(describing: vpcSecurityGroupIds)))"}
}