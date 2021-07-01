// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateConnectionAliasOutputResponse: Equatable {
    /// <p>The identifier of the connection alias.</p>
    public let aliasId: String?

    public init (
        aliasId: String? = nil
    )
    {
        self.aliasId = aliasId
    }
}

extension CreateConnectionAliasOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateConnectionAliasOutputResponse(aliasId: \(String(describing: aliasId)))"}
}