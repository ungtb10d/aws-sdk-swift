// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetectDocumentTextInput: Equatable {
    /// <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    ///          to call Amazon Textract operations, you can't pass image bytes. The document must be an image
    ///       in JPEG or PNG format.</p>
    ///          <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    ///          image bytes that are passed using the <code>Bytes</code> field. </p>
    public let document: Document?

    public init (
        document: Document? = nil
    )
    {
        self.document = document
    }
}

extension DetectDocumentTextInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectDocumentTextInput(document: \(String(describing: document)))"}
}