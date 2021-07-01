// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetReservationCoverageInputBody: Equatable {
    public let timePeriod: DateInterval?
    public let groupBy: [GroupDefinition]?
    public let granularity: Granularity?
    public let filter: Expression?
    public let metrics: [String]?
    public let nextPageToken: String?
    public let sortBy: SortDefinition?
    public let maxResults: Int
}

extension GetReservationCoverageInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case granularity = "Granularity"
        case groupBy = "GroupBy"
        case maxResults = "MaxResults"
        case metrics = "Metrics"
        case nextPageToken = "NextPageToken"
        case sortBy = "SortBy"
        case timePeriod = "TimePeriod"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let timePeriodDecoded = try containerValues.decodeIfPresent(DateInterval.self, forKey: .timePeriod)
        timePeriod = timePeriodDecoded
        let groupByContainer = try containerValues.decodeIfPresent([GroupDefinition?].self, forKey: .groupBy)
        var groupByDecoded0:[GroupDefinition]? = nil
        if let groupByContainer = groupByContainer {
            groupByDecoded0 = [GroupDefinition]()
            for structure0 in groupByContainer {
                if let structure0 = structure0 {
                    groupByDecoded0?.append(structure0)
                }
            }
        }
        groupBy = groupByDecoded0
        let granularityDecoded = try containerValues.decodeIfPresent(Granularity.self, forKey: .granularity)
        granularity = granularityDecoded
        let filterDecoded = try containerValues.decodeIfPresent(Expression.self, forKey: .filter)
        filter = filterDecoded
        let metricsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .metrics)
        var metricsDecoded0:[String]? = nil
        if let metricsContainer = metricsContainer {
            metricsDecoded0 = [String]()
            for string0 in metricsContainer {
                if let string0 = string0 {
                    metricsDecoded0?.append(string0)
                }
            }
        }
        metrics = metricsDecoded0
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
        let sortByDecoded = try containerValues.decodeIfPresent(SortDefinition.self, forKey: .sortBy)
        sortBy = sortByDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}