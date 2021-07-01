// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFleetsOutputResponseBody: Equatable {
    public let fleetIds: [String]?
    public let nextToken: String?
}

extension ListFleetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetIds = "FleetIds"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .fleetIds)
        var fleetIdsDecoded0:[String]? = nil
        if let fleetIdsContainer = fleetIdsContainer {
            fleetIdsDecoded0 = [String]()
            for string0 in fleetIdsContainer {
                if let string0 = string0 {
                    fleetIdsDecoded0?.append(string0)
                }
            }
        }
        fleetIds = fleetIdsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}