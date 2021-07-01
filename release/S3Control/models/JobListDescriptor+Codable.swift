// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JobListDescriptor: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case description = "Description"
        case jobId = "JobId"
        case operation = "Operation"
        case priority = "Priority"
        case progressSummary = "ProgressSummary"
        case status = "Status"
        case terminationDate = "TerminationDate"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let creationTime = creationTime {
            try container.encode(TimestampWrapper(creationTime, format: .dateTime), forKey: Key("creationTime"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("description"))
        }
        if let jobId = jobId {
            try container.encode(jobId, forKey: Key("jobId"))
        }
        if let operation = operation {
            try container.encode(operation, forKey: Key("operation"))
        }
        if priority != 0 {
            try container.encode(priority, forKey: Key("priority"))
        }
        if let progressSummary = progressSummary {
            try container.encode(progressSummary, forKey: Key("progressSummary"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
        if let terminationDate = terminationDate {
            try container.encode(TimestampWrapper(terminationDate, format: .dateTime), forKey: Key("terminationDate"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobId)
        jobId = jobIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let operationDecoded = try containerValues.decodeIfPresent(OperationName.self, forKey: .operation)
        operation = operationDecoded
        let priorityDecoded = try containerValues.decode(Int.self, forKey: .priority)
        priority = priorityDecoded
        let statusDecoded = try containerValues.decodeIfPresent(JobStatus.self, forKey: .status)
        status = statusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationTime)
        var creationTimeBuffer:Date? = nil
        if let creationTimeDecoded = creationTimeDecoded {
            creationTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(creationTimeDecoded, format: .dateTime)
        }
        creationTime = creationTimeBuffer
        let terminationDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .terminationDate)
        var terminationDateBuffer:Date? = nil
        if let terminationDateDecoded = terminationDateDecoded {
            terminationDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(terminationDateDecoded, format: .dateTime)
        }
        terminationDate = terminationDateBuffer
        let progressSummaryDecoded = try containerValues.decodeIfPresent(JobProgressSummary.self, forKey: .progressSummary)
        progressSummary = progressSummaryDecoded
    }
}