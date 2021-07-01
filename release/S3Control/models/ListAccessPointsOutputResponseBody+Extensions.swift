// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAccessPointsOutputResponseBody: Equatable {
    public let accessPointList: [AccessPoint]?
    public let nextToken: String?
}

extension ListAccessPointsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accessPointList = "AccessPointList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.accessPointList) {
            struct KeyVal0{struct AccessPoint{}}
            let accessPointListWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.AccessPoint>.CodingKeys.self, forKey: .accessPointList)
            if let accessPointListWrappedContainer = accessPointListWrappedContainer {
                let accessPointListContainer = try accessPointListWrappedContainer.decodeIfPresent([AccessPoint].self, forKey: .member)
                var accessPointListBuffer:[AccessPoint]? = nil
                if let accessPointListContainer = accessPointListContainer {
                    accessPointListBuffer = [AccessPoint]()
                    for structureContainer0 in accessPointListContainer {
                        accessPointListBuffer?.append(structureContainer0)
                    }
                }
                accessPointList = accessPointListBuffer
            } else {
                accessPointList = []
            }
        } else {
            accessPointList = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}