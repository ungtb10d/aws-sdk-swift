// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetSuiteRunReportOutputResponseBody: Equatable {
    public let qualificationReportDownloadUrl: String?
}

extension GetSuiteRunReportOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case qualificationReportDownloadUrl
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let qualificationReportDownloadUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .qualificationReportDownloadUrl)
        qualificationReportDownloadUrl = qualificationReportDownloadUrlDecoded
    }
}