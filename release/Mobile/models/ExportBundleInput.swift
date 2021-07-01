// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             Request structure used to request generation of custom SDK and tool packages
///             required to integrate mobile web or app clients with backed AWS resources.
///         </p>
public struct ExportBundleInput: Equatable {
    /// <p>
    ///             Unique bundle identifier.
    ///         </p>
    public let bundleId: String?
    /// <p>
    ///             Developer desktop or target application platform.
    ///         </p>
    public let platform: Platform?
    /// <p>
    ///             Unique project identifier.
    ///         </p>
    public let projectId: String?

    public init (
        bundleId: String? = nil,
        platform: Platform? = nil,
        projectId: String? = nil
    )
    {
        self.bundleId = bundleId
        self.platform = platform
        self.projectId = projectId
    }
}

extension ExportBundleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExportBundleInput(bundleId: \(String(describing: bundleId)), platform: \(String(describing: platform)), projectId: \(String(describing: projectId)))"}
}