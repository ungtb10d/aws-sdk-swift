// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>AttachVolumeInput</p>
public struct DetachVolumeInput: Equatable {
    /// <p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume
    ///          and detach the volume. The default is <code>false</code>. If this value is set to
    ///             <code>false</code>, you must manually disconnect the iSCSI connection from the target
    ///          volume.</p>
    ///
    ///          <p>Valid Values: <code>true</code> | <code>false</code>
    ///          </p>
    public let forceDetach: Bool?
    /// <p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>
    public let volumeARN: String?

    public init (
        forceDetach: Bool? = nil,
        volumeARN: String? = nil
    )
    {
        self.forceDetach = forceDetach
        self.volumeARN = volumeARN
    }
}

extension DetachVolumeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetachVolumeInput(forceDetach: \(String(describing: forceDetach)), volumeARN: \(String(describing: volumeARN)))"}
}