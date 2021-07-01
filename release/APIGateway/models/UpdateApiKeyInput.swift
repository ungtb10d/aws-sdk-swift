// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to change information about an <a>ApiKey</a> resource.</p>
public struct UpdateApiKeyInput: Equatable {
    /// <p>[Required] The identifier of the <a>ApiKey</a> resource to be updated.</p>
    public let apiKey: String?
    /// <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
    public let patchOperations: [PatchOperation]?

    public init (
        apiKey: String? = nil,
        patchOperations: [PatchOperation]? = nil
    )
    {
        self.apiKey = apiKey
        self.patchOperations = patchOperations
    }
}

extension UpdateApiKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateApiKeyInput(apiKey: \(String(describing: apiKey)), patchOperations: \(String(describing: patchOperations)))"}
}