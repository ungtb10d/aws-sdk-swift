// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides information for filtering a list of translation jobs. For more information, see
///         <a>ListTextTranslationJobs</a>.</p>
public struct TextTranslationJobFilter: Equatable {
    /// <p>Filters the list of jobs by name.</p>
    public let jobName: String?
    /// <p>Filters the list of jobs based by job status.</p>
    public let jobStatus: JobStatus?
    /// <p>Filters the list of jobs based on the time that the job was submitted for processing and
    ///       returns only the jobs submitted after the specified time. Jobs are returned in descending
    ///       order, newest to oldest.</p>
    public let submittedAfterTime: Date?
    /// <p>Filters the list of jobs based on the time that the job was submitted for processing and
    ///       returns only the jobs submitted before the specified time. Jobs are returned in ascending
    ///       order, oldest to newest.</p>
    public let submittedBeforeTime: Date?

    public init (
        jobName: String? = nil,
        jobStatus: JobStatus? = nil,
        submittedAfterTime: Date? = nil,
        submittedBeforeTime: Date? = nil
    )
    {
        self.jobName = jobName
        self.jobStatus = jobStatus
        self.submittedAfterTime = submittedAfterTime
        self.submittedBeforeTime = submittedBeforeTime
    }
}

extension TextTranslationJobFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TextTranslationJobFilter(jobName: \(String(describing: jobName)), jobStatus: \(String(describing: jobStatus)), submittedAfterTime: \(String(describing: submittedAfterTime)), submittedBeforeTime: \(String(describing: submittedBeforeTime)))"}
}