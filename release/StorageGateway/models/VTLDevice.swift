// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a device object associated with a tape gateway.</p>
public struct VTLDevice: Equatable {
    /// <p>A list of iSCSI information about a VTL device.</p>
    public let deviceiSCSIAttributes: DeviceiSCSIAttributes?
    /// <p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media
    ///          changer).</p>
    public let vTLDeviceARN: String?
    /// <p>Specifies the model number of device that the VTL device emulates.</p>
    public let vTLDeviceProductIdentifier: String?
    /// <p>Specifies the type of device that the VTL device emulates.</p>
    public let vTLDeviceType: String?
    /// <p>Specifies the vendor of the device that the VTL device object emulates.</p>
    public let vTLDeviceVendor: String?

    public init (
        deviceiSCSIAttributes: DeviceiSCSIAttributes? = nil,
        vTLDeviceARN: String? = nil,
        vTLDeviceProductIdentifier: String? = nil,
        vTLDeviceType: String? = nil,
        vTLDeviceVendor: String? = nil
    )
    {
        self.deviceiSCSIAttributes = deviceiSCSIAttributes
        self.vTLDeviceARN = vTLDeviceARN
        self.vTLDeviceProductIdentifier = vTLDeviceProductIdentifier
        self.vTLDeviceType = vTLDeviceType
        self.vTLDeviceVendor = vTLDeviceVendor
    }
}

extension VTLDevice: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VTLDevice(deviceiSCSIAttributes: \(String(describing: deviceiSCSIAttributes)), vTLDeviceARN: \(String(describing: vTLDeviceARN)), vTLDeviceProductIdentifier: \(String(describing: vTLDeviceProductIdentifier)), vTLDeviceType: \(String(describing: vTLDeviceType)), vTLDeviceVendor: \(String(describing: vTLDeviceVendor)))"}
}