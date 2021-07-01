// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetComplianceSummaryByConfigRuleOutputResponseBody: Equatable {
    public let complianceSummary: ComplianceSummary?
}

extension GetComplianceSummaryByConfigRuleOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case complianceSummary = "ComplianceSummary"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let complianceSummaryDecoded = try containerValues.decodeIfPresent(ComplianceSummary.self, forKey: .complianceSummary)
        complianceSummary = complianceSummaryDecoded
    }
}