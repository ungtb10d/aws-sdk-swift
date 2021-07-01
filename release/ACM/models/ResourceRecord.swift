// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains a DNS record value that you can use to can use to validate ownership or control
///       of a domain. This is used by the <a>DescribeCertificate</a> action. </p>
public struct ResourceRecord: Equatable {
    /// <p>The name of the DNS record to create in your domain. This is supplied by ACM.</p>
    public let name: String?
    /// <p>The type of DNS record. Currently this can be <code>CNAME</code>.</p>
    public let type: RecordType?
    /// <p>The value of the CNAME record to add to your DNS database. This is supplied by
    ///       ACM.</p>
    public let value: String?

    public init (
        name: String? = nil,
        type: RecordType? = nil,
        value: String? = nil
    )
    {
        self.name = name
        self.type = type
        self.value = value
    }
}

extension ResourceRecord: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceRecord(name: \(String(describing: name)), type: \(String(describing: type)), value: \(String(describing: value)))"}
}