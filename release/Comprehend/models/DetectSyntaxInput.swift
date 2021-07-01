// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetectSyntaxInput: Equatable {
    /// <p>The language code of the input documents. You can specify any of the following languages
    ///       supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    ///       Italian ("it"), or Portuguese ("pt").</p>
    public let languageCode: SyntaxLanguageCode?
    /// <p>A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded
    ///       characters.</p>
    public let text: String?

    public init (
        languageCode: SyntaxLanguageCode? = nil,
        text: String? = nil
    )
    {
        self.languageCode = languageCode
        self.text = text
    }
}

extension DetectSyntaxInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectSyntaxInput(languageCode: \(String(describing: languageCode)), text: \(String(describing: text)))"}
}