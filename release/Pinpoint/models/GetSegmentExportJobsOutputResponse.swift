// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSegmentExportJobsOutputResponse: Equatable {
    /// <p>Provides information about all the export jobs that are associated with an application or segment. An export job is a job that exports endpoint definitions to a file.</p>
    public let exportJobsResponse: ExportJobsResponse?

    public init (
        exportJobsResponse: ExportJobsResponse? = nil
    )
    {
        self.exportJobsResponse = exportJobsResponse
    }
}

extension GetSegmentExportJobsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSegmentExportJobsOutputResponse(exportJobsResponse: \(String(describing: exportJobsResponse)))"}
}