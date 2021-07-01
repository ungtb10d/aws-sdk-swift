// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
public struct ElasticsearchVersionStatus: Equatable {
    /// <p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>
    public let options: String?
    /// <p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
    public let status: OptionStatus?

    public init (
        options: String? = nil,
        status: OptionStatus? = nil
    )
    {
        self.options = options
        self.status = status
    }
}

extension ElasticsearchVersionStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ElasticsearchVersionStatus(options: \(String(describing: options)), status: \(String(describing: status)))"}
}