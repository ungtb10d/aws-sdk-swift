// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SearchFacesByImageOutputResponse: Equatable {
    /// <p>An array of faces that match the input face, along with the confidence in the
    ///       match.</p>
    public let faceMatches: [FaceMatch]?
    /// <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
    public let faceModelVersion: String?
    /// <p>The bounding box around the face in the input image that Amazon Rekognition used for the
    ///       search.</p>
    public let searchedFaceBoundingBox: BoundingBox?
    /// <p>The level of confidence that the <code>searchedFaceBoundingBox</code>, contains a
    ///       face.</p>
    public let searchedFaceConfidence: Float?

    public init (
        faceMatches: [FaceMatch]? = nil,
        faceModelVersion: String? = nil,
        searchedFaceBoundingBox: BoundingBox? = nil,
        searchedFaceConfidence: Float? = nil
    )
    {
        self.faceMatches = faceMatches
        self.faceModelVersion = faceModelVersion
        self.searchedFaceBoundingBox = searchedFaceBoundingBox
        self.searchedFaceConfidence = searchedFaceConfidence
    }
}

extension SearchFacesByImageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SearchFacesByImageOutputResponse(faceMatches: \(String(describing: faceMatches)), faceModelVersion: \(String(describing: faceModelVersion)), searchedFaceBoundingBox: \(String(describing: searchedFaceBoundingBox)), searchedFaceConfidence: \(String(describing: searchedFaceConfidence)))"}
}