// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListActivitiesOutputResponseBody: Equatable {
    public let activities: [ActivityListItem]?
    public let nextToken: String?
}

extension ListActivitiesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case activities
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let activitiesContainer = try containerValues.decodeIfPresent([ActivityListItem?].self, forKey: .activities)
        var activitiesDecoded0:[ActivityListItem]? = nil
        if let activitiesContainer = activitiesContainer {
            activitiesDecoded0 = [ActivityListItem]()
            for structure0 in activitiesContainer {
                if let structure0 = structure0 {
                    activitiesDecoded0?.append(structure0)
                }
            }
        }
        activities = activitiesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}