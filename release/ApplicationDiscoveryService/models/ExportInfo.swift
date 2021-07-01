// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information regarding the export status of discovered data. The value is an array of
///       objects.</p>
public struct ExportInfo: Equatable {
    /// <p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is
    ///       displayed only if the export succeeded.</p>
    public let configurationsDownloadUrl: String?
    /// <p>A unique identifier used to query an export.</p>
    public let exportId: String?
    /// <p>The time that the data export was initiated.</p>
    public let exportRequestTime: Date?
    /// <p>The status of the data export job.</p>
    public let exportStatus: ExportStatus?
    /// <p>If true, the export of agent information exceeded the size limit for a single export
    ///       and the exported data is incomplete for the requested time range. To address this, select a
    ///       smaller time range for the export by using <code>startDate</code> and
    ///       <code>endDate</code>.</p>
    public let isTruncated: Bool
    /// <p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no
    ///         <code>endTime</code> was requested, this result does not appear in
    ///       <code>ExportInfo</code>.</p>
    public let requestedEndTime: Date?
    /// <p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code>
    ///       request. If no <code>startTime</code> was requested, this result does not appear in
    ///         <code>ExportInfo</code>.</p>
    public let requestedStartTime: Date?
    /// <p>A status message provided for API callers.</p>
    public let statusMessage: String?

    public init (
        configurationsDownloadUrl: String? = nil,
        exportId: String? = nil,
        exportRequestTime: Date? = nil,
        exportStatus: ExportStatus? = nil,
        isTruncated: Bool = false,
        requestedEndTime: Date? = nil,
        requestedStartTime: Date? = nil,
        statusMessage: String? = nil
    )
    {
        self.configurationsDownloadUrl = configurationsDownloadUrl
        self.exportId = exportId
        self.exportRequestTime = exportRequestTime
        self.exportStatus = exportStatus
        self.isTruncated = isTruncated
        self.requestedEndTime = requestedEndTime
        self.requestedStartTime = requestedStartTime
        self.statusMessage = statusMessage
    }
}

extension ExportInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExportInfo(configurationsDownloadUrl: \(String(describing: configurationsDownloadUrl)), exportId: \(String(describing: exportId)), exportRequestTime: \(String(describing: exportRequestTime)), exportStatus: \(String(describing: exportStatus)), isTruncated: \(String(describing: isTruncated)), requestedEndTime: \(String(describing: requestedEndTime)), requestedStartTime: \(String(describing: requestedStartTime)), statusMessage: \(String(describing: statusMessage)))"}
}