// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Gets a documentation snapshot of an API.</p>
public struct GetDocumentationVersionInput: Equatable {
    /// <p>[Required] The version identifier of the to-be-retrieved documentation snapshot.</p>
    public let documentationVersion: String?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?

    public init (
        documentationVersion: String? = nil,
        restApiId: String? = nil
    )
    {
        self.documentationVersion = documentationVersion
        self.restApiId = restApiId
    }
}

extension GetDocumentationVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDocumentationVersionInput(documentationVersion: \(String(describing: documentationVersion)), restApiId: \(String(describing: restApiId)))"}
}