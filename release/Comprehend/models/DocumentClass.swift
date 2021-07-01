// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the class that categorizes the document being analyzed</p>
public struct DocumentClass: Equatable {
    /// <p>The name of the class.</p>
    public let name: String?
    /// <p>The confidence score that Amazon Comprehend has this class correctly attributed.</p>
    public let score: Float?

    public init (
        name: String? = nil,
        score: Float? = nil
    )
    {
        self.name = name
        self.score = score
    }
}

extension DocumentClass: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DocumentClass(name: \(String(describing: name)), score: \(String(describing: score)))"}
}