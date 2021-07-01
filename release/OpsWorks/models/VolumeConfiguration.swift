// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes an Amazon EBS volume configuration.</p>
public struct VolumeConfiguration: Equatable {
    /// <p>Specifies whether an Amazon EBS volume is encrypted. For more information,
    ///             see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a>.</p>
    public let encrypted: Bool?
    /// <p>For PIOPS volumes, the IOPS per disk.</p>
    public let iops: Int?
    /// <p>The volume mount point. For example "/dev/sdh".</p>
    public let mountPoint: String?
    /// <p>The number of disks in the volume.</p>
    public let numberOfDisks: Int?
    /// <p>The volume <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
    public let raidLevel: Int?
    /// <p>The volume size.</p>
    public let size: Int?
    /// <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">
    ///           Amazon EBS Volume Types</a>.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p>
    ///             </li>
    ///             <li>
    ///               <p>
    ///                   <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
    ///             </li>
    ///             <li>
    ///               <p>
    ///                   <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
    ///             </li>
    ///          </ul>
    public let volumeType: String?

    public init (
        encrypted: Bool? = nil,
        iops: Int? = nil,
        mountPoint: String? = nil,
        numberOfDisks: Int? = nil,
        raidLevel: Int? = nil,
        size: Int? = nil,
        volumeType: String? = nil
    )
    {
        self.encrypted = encrypted
        self.iops = iops
        self.mountPoint = mountPoint
        self.numberOfDisks = numberOfDisks
        self.raidLevel = raidLevel
        self.size = size
        self.volumeType = volumeType
    }
}

extension VolumeConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VolumeConfiguration(encrypted: \(String(describing: encrypted)), iops: \(String(describing: iops)), mountPoint: \(String(describing: mountPoint)), numberOfDisks: \(String(describing: numberOfDisks)), raidLevel: \(String(describing: raidLevel)), size: \(String(describing: size)), volumeType: \(String(describing: volumeType)))"}
}