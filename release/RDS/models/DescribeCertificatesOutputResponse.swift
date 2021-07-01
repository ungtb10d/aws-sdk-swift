// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Data returned by the <b>DescribeCertificates</b> action.</p>
public struct DescribeCertificatesOutputResponse: Equatable {
    /// <p>The list of <code>Certificate</code> objects for the AWS account.</p>
    public let certificates: [Certificate]?
    /// <p>
    ///             An optional pagination token provided by a previous
    ///             <code>DescribeCertificates</code> request.
    ///             If this parameter is specified, the response includes
    ///             only records beyond the marker,
    ///             up to the value specified by <code>MaxRecords</code> .
    ///         </p>
    public let marker: String?

    public init (
        certificates: [Certificate]? = nil,
        marker: String? = nil
    )
    {
        self.certificates = certificates
        self.marker = marker
    }
}

extension DescribeCertificatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeCertificatesOutputResponse(certificates: \(String(describing: certificates)), marker: \(String(describing: marker)))"}
}