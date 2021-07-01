// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeCodeBindingInput: Equatable {
    /// <p>The language of the code binding.</p>
    public let language: String?
    /// <p>The name of the registry.</p>
    public let registryName: String?
    /// <p>The name of the schema.</p>
    public let schemaName: String?
    /// <p>Specifying this limits the results to only this schema version.</p>
    public let schemaVersion: String?

    public init (
        language: String? = nil,
        registryName: String? = nil,
        schemaName: String? = nil,
        schemaVersion: String? = nil
    )
    {
        self.language = language
        self.registryName = registryName
        self.schemaName = schemaName
        self.schemaVersion = schemaVersion
    }
}

extension DescribeCodeBindingInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeCodeBindingInput(language: \(String(describing: language)), registryName: \(String(describing: registryName)), schemaName: \(String(describing: schemaName)), schemaVersion: \(String(describing: schemaVersion)))"}
}