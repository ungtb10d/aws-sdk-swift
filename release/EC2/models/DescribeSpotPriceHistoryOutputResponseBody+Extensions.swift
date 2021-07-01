// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeSpotPriceHistoryOutputResponseBody: Equatable {
    public let nextToken: String?
    public let spotPriceHistory: [SpotPrice]?
}

extension DescribeSpotPriceHistoryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case spotPriceHistory = "spotPriceHistorySet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        if containerValues.contains(.spotPriceHistory) {
            struct KeyVal0{struct item{}}
            let spotPriceHistoryWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .spotPriceHistory)
            if let spotPriceHistoryWrappedContainer = spotPriceHistoryWrappedContainer {
                let spotPriceHistoryContainer = try spotPriceHistoryWrappedContainer.decodeIfPresent([SpotPrice].self, forKey: .member)
                var spotPriceHistoryBuffer:[SpotPrice]? = nil
                if let spotPriceHistoryContainer = spotPriceHistoryContainer {
                    spotPriceHistoryBuffer = [SpotPrice]()
                    for structureContainer0 in spotPriceHistoryContainer {
                        spotPriceHistoryBuffer?.append(structureContainer0)
                    }
                }
                spotPriceHistory = spotPriceHistoryBuffer
            } else {
                spotPriceHistory = []
            }
        } else {
            spotPriceHistory = nil
        }
    }
}