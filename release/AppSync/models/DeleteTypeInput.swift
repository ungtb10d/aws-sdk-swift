// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteTypeInput: Equatable {
    /// <p>The API ID.</p>
    public let apiId: String?
    /// <p>The type name.</p>
    public let typeName: String?

    public init (
        apiId: String? = nil,
        typeName: String? = nil
    )
    {
        self.apiId = apiId
        self.typeName = typeName
    }
}

extension DeleteTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTypeInput(apiId: \(String(describing: apiId)), typeName: \(String(describing: typeName)))"}
}