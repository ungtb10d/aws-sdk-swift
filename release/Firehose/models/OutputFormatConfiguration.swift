// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the
///          format of your data before it writes it to Amazon S3. This parameter is required if
///             <code>Enabled</code> is set to true.</p>
public struct OutputFormatConfiguration: Equatable {
    /// <p>Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet
    ///          SerDe. If both are non-null, the server rejects the request.</p>
    public let serializer: Serializer?

    public init (
        serializer: Serializer? = nil
    )
    {
        self.serializer = serializer
    }
}

extension OutputFormatConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OutputFormatConfiguration(serializer: \(String(describing: serializer)))"}
}