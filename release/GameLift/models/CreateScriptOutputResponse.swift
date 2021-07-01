// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateScriptOutputResponse: Equatable {
    /// <p>The newly created script record with a unique script ID and ARN. The new script's
    ///             storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3
    ///             bucket under your account, the storage location reflects the information that was
    ///             provided in the <i>CreateScript</i> request; (2) If the script file was
    ///             uploaded from a local zip file, the storage location reflects an S3 location controls by
    ///             the Amazon GameLift service.</p>
    public let script: Script?

    public init (
        script: Script? = nil
    )
    {
        self.script = script
    }
}

extension CreateScriptOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateScriptOutputResponse(script: \(String(describing: script)))"}
}