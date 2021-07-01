// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetFindingsReportAccountSummaryOutputResponseBody: Equatable {
    public let reportSummaries: [FindingsReportSummary]?
    public let nextToken: String?
}

extension GetFindingsReportAccountSummaryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case reportSummaries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let reportSummariesContainer = try containerValues.decodeIfPresent([FindingsReportSummary?].self, forKey: .reportSummaries)
        var reportSummariesDecoded0:[FindingsReportSummary]? = nil
        if let reportSummariesContainer = reportSummariesContainer {
            reportSummariesDecoded0 = [FindingsReportSummary]()
            for structure0 in reportSummariesContainer {
                if let structure0 = structure0 {
                    reportSummariesDecoded0?.append(structure0)
                }
            }
        }
        reportSummaries = reportSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}