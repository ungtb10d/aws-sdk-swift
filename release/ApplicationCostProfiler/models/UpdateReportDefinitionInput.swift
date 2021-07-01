// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateReportDefinitionInput: Equatable {
    /// <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    ///       report.</p>
    public let destinationS3Location: S3Location?
    /// <p>Required. The format to use for the generated report.</p>
    public let format: Format?
    /// <p>Required. Description of the report.</p>
    public let reportDescription: String?
    /// <p>Required. The cadence to generate the report.</p>
    public let reportFrequency: ReportFrequency?
    /// <p>Required. ID of the report to update.</p>
    public let reportId: String?

    public init (
        destinationS3Location: S3Location? = nil,
        format: Format? = nil,
        reportDescription: String? = nil,
        reportFrequency: ReportFrequency? = nil,
        reportId: String? = nil
    )
    {
        self.destinationS3Location = destinationS3Location
        self.format = format
        self.reportDescription = reportDescription
        self.reportFrequency = reportFrequency
        self.reportId = reportId
    }
}

extension UpdateReportDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateReportDefinitionInput(destinationS3Location: \(String(describing: destinationS3Location)), format: \(String(describing: format)), reportDescription: \(String(describing: reportDescription)), reportFrequency: \(String(describing: reportFrequency)), reportId: \(String(describing: reportId)))"}
}