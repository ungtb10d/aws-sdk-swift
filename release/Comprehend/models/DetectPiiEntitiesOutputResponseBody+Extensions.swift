// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DetectPiiEntitiesOutputResponseBody: Equatable {
    public let entities: [PiiEntity]?
}

extension DetectPiiEntitiesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case entities = "Entities"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let entitiesContainer = try containerValues.decodeIfPresent([PiiEntity?].self, forKey: .entities)
        var entitiesDecoded0:[PiiEntity]? = nil
        if let entitiesContainer = entitiesContainer {
            entitiesDecoded0 = [PiiEntity]()
            for structure0 in entitiesContainer {
                if let structure0 = structure0 {
                    entitiesDecoded0?.append(structure0)
                }
            }
        }
        entities = entitiesDecoded0
    }
}