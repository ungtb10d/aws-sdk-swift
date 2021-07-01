// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeregisterInstanceOutputResponse: Equatable {
    /// <p>A value that you can use to determine whether the request completed successfully. For more information, see
    ///     <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html">GetOperation</a>.</p>
    public let operationId: String?

    public init (
        operationId: String? = nil
    )
    {
        self.operationId = operationId
    }
}

extension DeregisterInstanceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeregisterInstanceOutputResponse(operationId: \(String(describing: operationId)))"}
}