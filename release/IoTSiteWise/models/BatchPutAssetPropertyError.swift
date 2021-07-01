// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains error information from updating a batch of asset property values.</p>
public struct BatchPutAssetPropertyError: Equatable {
    /// <p>The error code.</p>
    public let errorCode: BatchPutAssetPropertyValueErrorCode?
    /// <p>The associated error message.</p>
    public let errorMessage: String?
    /// <p>A list of timestamps for each  error, if any.</p>
    public let timestamps: [TimeInNanos]?

    public init (
        errorCode: BatchPutAssetPropertyValueErrorCode? = nil,
        errorMessage: String? = nil,
        timestamps: [TimeInNanos]? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.timestamps = timestamps
    }
}

extension BatchPutAssetPropertyError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchPutAssetPropertyError(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), timestamps: \(String(describing: timestamps)))"}
}