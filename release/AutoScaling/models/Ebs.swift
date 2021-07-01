// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes information used to set up an Amazon EBS volume specified in a block device
///             mapping.</p>
public struct Ebs: Equatable {
    /// <p>Indicates whether the volume is deleted on instance termination. For Amazon EC2 Auto Scaling, the
    ///             default value is <code>true</code>.</p>
    public let deleteOnTermination: Bool?
    /// <p>Specifies whether the volume should be encrypted. Encrypted EBS volumes can only be
    ///             attached to instances that support Amazon EBS encryption. For more information, see
    ///                 <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances">Supported Instance Types</a>. If your AMI uses encrypted volumes, you can also
    ///             only launch it on supported instance types.</p>
    ///         <note>
    ///             <p>If you are creating a volume from a snapshot, you cannot specify an encryption
    ///                 value. Volumes that are created from encrypted snapshots are automatically
    ///                 encrypted, and volumes that are created from unencrypted snapshots are automatically
    ///                 unencrypted. By default, encrypted snapshots use the AWS managed CMK that is used
    ///                 for EBS encryption, but you can specify a custom CMK when you create the snapshot.
    ///                 The ability to encrypt a snapshot during copying also allows you to apply a new CMK
    ///                 to an already-encrypted snapshot. Volumes restored from the
    ///                 resulting copy are only accessible using the new CMK.</p>
    ///             <p>Enabling <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">encryption by default</a> results in all EBS volumes being encrypted with
    ///                 the AWS managed CMK or a customer managed CMK, whether or not the snapshot was
    ///                 encrypted.</p>
    ///         </note>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html">Using Encryption with EBS-Backed
    ///                 AMIs</a> in the <i>Amazon EC2 User Guide for Linux Instances</i> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/key-policy-requirements-EBS-encryption.html">Required
    ///                 CMK key policy for use with encrypted volumes</a> in the
    ///                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    public let encrypted: Bool?
    /// <p>The number of input/output (I/O) operations per second (IOPS) to provision for the
    ///             volume. For <code>gp3</code> and <code>io1</code> volumes, this represents the number of
    ///             IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents
    ///             the baseline performance of the volume and the rate at which the volume accumulates I/O
    ///             credits for bursting. </p>
    ///         <p>The following are the supported values for each volume type: </p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>gp3</code>: 3,000-16,000 IOPS</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>io1</code>: 100-64,000 IOPS</p>
    ///             </li>
    ///          </ul>
    ///
    ///         <p>For <code>io1</code> volumes, we guarantee 64,000 IOPS only for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">Instances
    ///                 built on the Nitro System</a>. Other instance families guarantee performance up
    ///             to 32,000 IOPS. </p>
    ///         <p>
    ///             <code>Iops</code> is supported when the volume type is <code>gp3</code> or
    ///                 <code>io1</code> and required only when the volume type is <code>io1</code>. (Not
    ///             used with <code>standard</code>, <code>gp2</code>, <code>st1</code>, or <code>sc1</code>
    ///             volumes.)  </p>
    public let iops: Int?
    /// <p>The snapshot ID of the volume to use.</p>
    ///         <p>You must specify either a <code>VolumeSize</code> or a <code>SnapshotId</code>.</p>
    public let snapshotId: String?
    /// <p>The throughput (MiBps) to provision for a <code>gp3</code> volume.</p>
    public let throughput: Int?
    /// <p>The volume size, in GiBs. The following are the supported volumes sizes for each
    ///             volume type: </p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>gp2</code> and <code>gp3</code>: 1-16,384</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>io1</code>: 4-16,384</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>st1</code> and <code>sc1</code>: 125-16,384</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>standard</code>: 1-1,024</p>
    ///             </li>
    ///          </ul>
    ///         <p>You must specify either a <code>SnapshotId</code> or a <code>VolumeSize</code>. If you
    ///             specify both <code>SnapshotId</code> and <code>VolumeSize</code>, the volume size must
    ///             be equal or greater than the size of the snapshot.</p>
    public let volumeSize: Int?
    /// <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">Amazon EBS Volume Types</a> in
    ///             the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    ///         <p>Valid Values: <code>standard</code> | <code>io1</code> | <code>gp2</code> |
    ///                 <code>st1</code> | <code>sc1</code> | <code>gp3</code>
    ///          </p>
    public let volumeType: String?

    public init (
        deleteOnTermination: Bool? = nil,
        encrypted: Bool? = nil,
        iops: Int? = nil,
        snapshotId: String? = nil,
        throughput: Int? = nil,
        volumeSize: Int? = nil,
        volumeType: String? = nil
    )
    {
        self.deleteOnTermination = deleteOnTermination
        self.encrypted = encrypted
        self.iops = iops
        self.snapshotId = snapshotId
        self.throughput = throughput
        self.volumeSize = volumeSize
        self.volumeType = volumeType
    }
}

extension Ebs: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Ebs(deleteOnTermination: \(String(describing: deleteOnTermination)), encrypted: \(String(describing: encrypted)), iops: \(String(describing: iops)), snapshotId: \(String(describing: snapshotId)), throughput: \(String(describing: throughput)), volumeSize: \(String(describing: volumeSize)), volumeType: \(String(describing: volumeType)))"}
}