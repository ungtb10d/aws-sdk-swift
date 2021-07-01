// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteFacesOutputResponse: Equatable {
    /// <p>An array of strings (face IDs) of the faces that were deleted.</p>
    public let deletedFaces: [String]?

    public init (
        deletedFaces: [String]? = nil
    )
    {
        self.deletedFaces = deletedFaces
    }
}

extension DeleteFacesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteFacesOutputResponse(deletedFaces: \(String(describing: deletedFaces)))"}
}