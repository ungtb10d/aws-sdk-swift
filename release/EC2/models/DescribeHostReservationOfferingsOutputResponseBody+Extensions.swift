// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeHostReservationOfferingsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let offeringSet: [HostOffering]?
}

extension DescribeHostReservationOfferingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case offeringSet = "offeringSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        if containerValues.contains(.offeringSet) {
            struct KeyVal0{struct item{}}
            let offeringSetWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .offeringSet)
            if let offeringSetWrappedContainer = offeringSetWrappedContainer {
                let offeringSetContainer = try offeringSetWrappedContainer.decodeIfPresent([HostOffering].self, forKey: .member)
                var offeringSetBuffer:[HostOffering]? = nil
                if let offeringSetContainer = offeringSetContainer {
                    offeringSetBuffer = [HostOffering]()
                    for structureContainer0 in offeringSetContainer {
                        offeringSetBuffer?.append(structureContainer0)
                    }
                }
                offeringSet = offeringSetBuffer
            } else {
                offeringSet = []
            }
        } else {
            offeringSet = nil
        }
    }
}