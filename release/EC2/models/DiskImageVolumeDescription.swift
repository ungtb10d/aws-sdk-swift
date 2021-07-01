// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a disk image volume.</p>
public struct DiskImageVolumeDescription: Equatable {
    /// <p>The volume identifier.</p>
    public let id: String?
    /// <p>The size of the volume, in GiB.</p>
    public let size: Int

    public init (
        id: String? = nil,
        size: Int = 0
    )
    {
        self.id = id
        self.size = size
    }
}

extension DiskImageVolumeDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DiskImageVolumeDescription(id: \(String(describing: id)), size: \(String(describing: size)))"}
}