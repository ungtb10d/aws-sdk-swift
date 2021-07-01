// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SetSubnetsOutputResponseBody: Equatable {
    public let availabilityZones: [AvailabilityZone]?
    public let ipAddressType: IpAddressType?
}

extension SetSubnetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case availabilityZones = "AvailabilityZones"
        case ipAddressType = "IpAddressType"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("SetSubnetsResult"))
        if containerValues.contains(.availabilityZones) {
            struct KeyVal0{struct member{}}
            let availabilityZonesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .availabilityZones)
            if let availabilityZonesWrappedContainer = availabilityZonesWrappedContainer {
                let availabilityZonesContainer = try availabilityZonesWrappedContainer.decodeIfPresent([AvailabilityZone].self, forKey: .member)
                var availabilityZonesBuffer:[AvailabilityZone]? = nil
                if let availabilityZonesContainer = availabilityZonesContainer {
                    availabilityZonesBuffer = [AvailabilityZone]()
                    for structureContainer0 in availabilityZonesContainer {
                        availabilityZonesBuffer?.append(structureContainer0)
                    }
                }
                availabilityZones = availabilityZonesBuffer
            } else {
                availabilityZones = []
            }
        } else {
            availabilityZones = nil
        }
        let ipAddressTypeDecoded = try containerValues.decodeIfPresent(IpAddressType.self, forKey: .ipAddressType)
        ipAddressType = ipAddressTypeDecoded
    }
}