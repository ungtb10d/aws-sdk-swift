// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CancelQueryOutputResponse: Equatable {
    /// <p>
    ///         A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code> request for the query specified by <code>QueryId</code> has already been issued.
    ///     </p>
    public let cancellationMessage: String?

    public init (
        cancellationMessage: String? = nil
    )
    {
        self.cancellationMessage = cancellationMessage
    }
}

extension CancelQueryOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CancelQueryOutputResponse(cancellationMessage: \(String(describing: cancellationMessage)))"}
}