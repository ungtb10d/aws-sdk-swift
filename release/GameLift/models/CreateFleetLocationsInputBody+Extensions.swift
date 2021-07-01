// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFleetLocationsInputBody: Equatable {
    public let fleetId: String?
    public let locations: [LocationConfiguration]?
}

extension CreateFleetLocationsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetId = "FleetId"
        case locations = "Locations"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fleetId)
        fleetId = fleetIdDecoded
        let locationsContainer = try containerValues.decodeIfPresent([LocationConfiguration?].self, forKey: .locations)
        var locationsDecoded0:[LocationConfiguration]? = nil
        if let locationsContainer = locationsContainer {
            locationsDecoded0 = [LocationConfiguration]()
            for structure0 in locationsContainer {
                if let structure0 = structure0 {
                    locationsDecoded0?.append(structure0)
                }
            }
        }
        locations = locationsDecoded0
    }
}