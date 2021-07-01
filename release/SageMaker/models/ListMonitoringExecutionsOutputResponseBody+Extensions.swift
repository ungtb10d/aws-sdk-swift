// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListMonitoringExecutionsOutputResponseBody: Equatable {
    public let monitoringExecutionSummaries: [MonitoringExecutionSummary]?
    public let nextToken: String?
}

extension ListMonitoringExecutionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case monitoringExecutionSummaries = "MonitoringExecutionSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let monitoringExecutionSummariesContainer = try containerValues.decodeIfPresent([MonitoringExecutionSummary?].self, forKey: .monitoringExecutionSummaries)
        var monitoringExecutionSummariesDecoded0:[MonitoringExecutionSummary]? = nil
        if let monitoringExecutionSummariesContainer = monitoringExecutionSummariesContainer {
            monitoringExecutionSummariesDecoded0 = [MonitoringExecutionSummary]()
            for structure0 in monitoringExecutionSummariesContainer {
                if let structure0 = structure0 {
                    monitoringExecutionSummariesDecoded0?.append(structure0)
                }
            }
        }
        monitoringExecutionSummaries = monitoringExecutionSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}