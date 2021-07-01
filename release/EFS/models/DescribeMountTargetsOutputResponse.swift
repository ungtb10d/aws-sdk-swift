// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeMountTargetsOutputResponse: Equatable {
    /// <p>If the request included the <code>Marker</code>, the response returns that value in
    ///       this field.</p>
    public let marker: String?
    /// <p>Returns the file system's mount targets as an array of
    ///         <code>MountTargetDescription</code> objects.</p>
    public let mountTargets: [MountTargetDescription]?
    /// <p>If a value is present, there are more mount targets to return. In a subsequent request,
    ///       you can provide <code>Marker</code> in your request with this value to retrieve the next set
    ///       of mount targets.</p>
    public let nextMarker: String?

    public init (
        marker: String? = nil,
        mountTargets: [MountTargetDescription]? = nil,
        nextMarker: String? = nil
    )
    {
        self.marker = marker
        self.mountTargets = mountTargets
        self.nextMarker = nextMarker
    }
}

extension DescribeMountTargetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeMountTargetsOutputResponse(marker: \(String(describing: marker)), mountTargets: \(String(describing: mountTargets)), nextMarker: \(String(describing: nextMarker)))"}
}