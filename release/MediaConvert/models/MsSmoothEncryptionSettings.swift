// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
public struct MsSmoothEncryptionSettings: Equatable {
    /// If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
    public let spekeKeyProvider: SpekeKeyProvider?

    public init (
        spekeKeyProvider: SpekeKeyProvider? = nil
    )
    {
        self.spekeKeyProvider = spekeKeyProvider
    }
}

extension MsSmoothEncryptionSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MsSmoothEncryptionSettings(spekeKeyProvider: \(String(describing: spekeKeyProvider)))"}
}