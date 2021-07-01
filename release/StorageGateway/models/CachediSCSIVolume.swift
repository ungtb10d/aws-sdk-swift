// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes an iSCSI cached volume.</p>
public struct CachediSCSIVolume: Equatable {
    /// <p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this
    ///          timestamp.</p>
    public let createdDate: Date?
    /// <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
    ///          S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
    ///          only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    public let kMSKey: String?
    /// <p>If the cached volume was created from a snapshot, this field contains the snapshot ID
    ///          used, e.g., snap-78e22663. Otherwise, this field is not included.</p>
    public let sourceSnapshotId: String?
    /// <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    ///          suffix for the target ARN. For example, specifying <code>TargetName</code> as
    ///             <i>myvolume</i> results in the target ARN of
    ///             <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    ///          The target name must be unique across all volumes on a gateway.</p>
    ///
    ///          <p>If you don't specify a value, Storage Gateway uses the value that was previously
    ///          used for this volume as the new target name.</p>
    public let targetName: String?
    /// <p>The Amazon Resource Name (ARN) of the storage volume.</p>
    public let volumeARN: String?
    /// <p>A value that indicates whether a storage volume is attached to or detached from a
    ///          gateway. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume">Moving
    ///             your volumes to a different gateway</a>.</p>
    public let volumeAttachmentStatus: String?
    /// <p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>
    public let volumeId: String?
    /// <p>Represents the percentage complete if the volume is restoring or bootstrapping that
    ///          represents the percent of data transferred. This field does not appear in the response if
    ///          the cached volume is not restoring or bootstrapping.</p>
    public let volumeProgress: Double?
    /// <p>The size, in bytes, of the volume capacity.</p>
    public let volumeSizeInBytes: Int
    /// <p>One of the VolumeStatus values that indicates the state of the storage volume.</p>
    public let volumeStatus: String?
    /// <p>One of the VolumeType enumeration values that describes the type of the volume.</p>
    public let volumeType: String?
    /// <p>The size of the data stored on the volume in bytes. This value is calculated based on
    ///          the number of blocks that are touched, instead of the actual amount of data written. This
    ///          value can be useful for sequential write patterns but less accurate for random write
    ///          patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the
    ///          volume, which is the value that is used to calculate your bill.</p>
    ///
    ///          <note>
    ///             <p>This value is not available for volumes created prior to May 13, 2015, until you
    ///             store data on the volume.</p>
    ///          </note>
    public let volumeUsedInBytes: Int?
    /// <p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI
    ///          attributes for one stored volume.</p>
    public let volumeiSCSIAttributes: VolumeiSCSIAttributes?

    public init (
        createdDate: Date? = nil,
        kMSKey: String? = nil,
        sourceSnapshotId: String? = nil,
        targetName: String? = nil,
        volumeARN: String? = nil,
        volumeAttachmentStatus: String? = nil,
        volumeId: String? = nil,
        volumeProgress: Double? = nil,
        volumeSizeInBytes: Int = 0,
        volumeStatus: String? = nil,
        volumeType: String? = nil,
        volumeUsedInBytes: Int? = nil,
        volumeiSCSIAttributes: VolumeiSCSIAttributes? = nil
    )
    {
        self.createdDate = createdDate
        self.kMSKey = kMSKey
        self.sourceSnapshotId = sourceSnapshotId
        self.targetName = targetName
        self.volumeARN = volumeARN
        self.volumeAttachmentStatus = volumeAttachmentStatus
        self.volumeId = volumeId
        self.volumeProgress = volumeProgress
        self.volumeSizeInBytes = volumeSizeInBytes
        self.volumeStatus = volumeStatus
        self.volumeType = volumeType
        self.volumeUsedInBytes = volumeUsedInBytes
        self.volumeiSCSIAttributes = volumeiSCSIAttributes
    }
}

extension CachediSCSIVolume: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CachediSCSIVolume(createdDate: \(String(describing: createdDate)), kMSKey: \(String(describing: kMSKey)), sourceSnapshotId: \(String(describing: sourceSnapshotId)), targetName: \(String(describing: targetName)), volumeARN: \(String(describing: volumeARN)), volumeAttachmentStatus: \(String(describing: volumeAttachmentStatus)), volumeId: \(String(describing: volumeId)), volumeProgress: \(String(describing: volumeProgress)), volumeSizeInBytes: \(String(describing: volumeSizeInBytes)), volumeStatus: \(String(describing: volumeStatus)), volumeType: \(String(describing: volumeType)), volumeUsedInBytes: \(String(describing: volumeUsedInBytes)), volumeiSCSIAttributes: \(String(describing: volumeiSCSIAttributes)))"}
}