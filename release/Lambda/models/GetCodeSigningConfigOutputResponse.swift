// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCodeSigningConfigOutputResponse: Equatable {
    /// <p>The code signing configuration</p>
    public let codeSigningConfig: CodeSigningConfig?

    public init (
        codeSigningConfig: CodeSigningConfig? = nil
    )
    {
        self.codeSigningConfig = codeSigningConfig
    }
}

extension GetCodeSigningConfigOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCodeSigningConfigOutputResponse(codeSigningConfig: \(String(describing: codeSigningConfig)))"}
}