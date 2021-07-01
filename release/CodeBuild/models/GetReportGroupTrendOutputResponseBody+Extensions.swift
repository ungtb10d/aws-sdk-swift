// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetReportGroupTrendOutputResponseBody: Equatable {
    public let stats: ReportGroupTrendStats?
    public let rawData: [ReportWithRawData]?
}

extension GetReportGroupTrendOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case rawData
        case stats
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statsDecoded = try containerValues.decodeIfPresent(ReportGroupTrendStats.self, forKey: .stats)
        stats = statsDecoded
        let rawDataContainer = try containerValues.decodeIfPresent([ReportWithRawData?].self, forKey: .rawData)
        var rawDataDecoded0:[ReportWithRawData]? = nil
        if let rawDataContainer = rawDataContainer {
            rawDataDecoded0 = [ReportWithRawData]()
            for structure0 in rawDataContainer {
                if let structure0 = structure0 {
                    rawDataDecoded0?.append(structure0)
                }
            }
        }
        rawData = rawDataDecoded0
    }
}