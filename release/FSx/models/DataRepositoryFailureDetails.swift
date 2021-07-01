// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides detailed information about the data respository if its <code>Lifecycle</code> is
///             set to <code>MISCONFIGURED</code>.</p>
public struct DataRepositoryFailureDetails: Equatable {
    /// <p>A detailed error message.</p>
    public let message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension DataRepositoryFailureDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DataRepositoryFailureDetails(message: \(String(describing: message)))"}
}