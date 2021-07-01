// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCodeSigningConfigOutputResponse: Equatable {
    /// <p>The code signing configuration.</p>
    public let codeSigningConfig: CodeSigningConfig?

    public init (
        codeSigningConfig: CodeSigningConfig? = nil
    )
    {
        self.codeSigningConfig = codeSigningConfig
    }
}

extension CreateCodeSigningConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCodeSigningConfigOutputResponse(codeSigningConfig: \(String(describing: codeSigningConfig)))"}
}