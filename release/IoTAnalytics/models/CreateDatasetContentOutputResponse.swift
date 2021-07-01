// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDatasetContentOutputResponse: Equatable {
    /// <p>The version ID of the dataset contents that are being created.</p>
    public let versionId: String?

    public init (
        versionId: String? = nil
    )
    {
        self.versionId = versionId
    }
}

extension CreateDatasetContentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDatasetContentOutputResponse(versionId: \(String(describing: versionId)))"}
}