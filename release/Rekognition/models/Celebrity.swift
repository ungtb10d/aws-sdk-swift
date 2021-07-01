// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about a celebrity recognized by the <a>RecognizeCelebrities</a> operation.</p>
public struct Celebrity: Equatable {
    /// <p>Provides information about the celebrity's face, such as its location on the
    ///       image.</p>
    public let face: ComparedFace?
    /// <p>A unique identifier for the celebrity. </p>
    public let id: String?
    /// <p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the
    ///       celebrity.</p>
    public let matchConfidence: Float?
    /// <p>The name of the celebrity.</p>
    public let name: String?
    /// <p>An array of URLs pointing to additional information about the celebrity. If there is no
    ///       additional information about the celebrity, this list is empty.</p>
    public let urls: [String]?

    public init (
        face: ComparedFace? = nil,
        id: String? = nil,
        matchConfidence: Float? = nil,
        name: String? = nil,
        urls: [String]? = nil
    )
    {
        self.face = face
        self.id = id
        self.matchConfidence = matchConfidence
        self.name = name
        self.urls = urls
    }
}

extension Celebrity: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Celebrity(face: \(String(describing: face)), id: \(String(describing: id)), matchConfidence: \(String(describing: matchConfidence)), name: \(String(describing: name)), urls: \(String(describing: urls)))"}
}