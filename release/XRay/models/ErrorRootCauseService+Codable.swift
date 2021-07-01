// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ErrorRootCauseService: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case entityPath = "EntityPath"
        case inferred = "Inferred"
        case name = "Name"
        case names = "Names"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountId = accountId {
            try encodeContainer.encode(accountId, forKey: .accountId)
        }
        if let entityPath = entityPath {
            var entityPathContainer = encodeContainer.nestedUnkeyedContainer(forKey: .entityPath)
            for errorrootcauseentitypath0 in entityPath {
                try entityPathContainer.encode(errorrootcauseentitypath0)
            }
        }
        if let inferred = inferred {
            try encodeContainer.encode(inferred, forKey: .inferred)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let names = names {
            var namesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .names)
            for servicenames0 in names {
                try namesContainer.encode(servicenames0)
            }
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let namesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .names)
        var namesDecoded0:[String]? = nil
        if let namesContainer = namesContainer {
            namesDecoded0 = [String]()
            for string0 in namesContainer {
                if let string0 = string0 {
                    namesDecoded0?.append(string0)
                }
            }
        }
        names = namesDecoded0
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
        let entityPathContainer = try containerValues.decodeIfPresent([ErrorRootCauseEntity?].self, forKey: .entityPath)
        var entityPathDecoded0:[ErrorRootCauseEntity]? = nil
        if let entityPathContainer = entityPathContainer {
            entityPathDecoded0 = [ErrorRootCauseEntity]()
            for structure0 in entityPathContainer {
                if let structure0 = structure0 {
                    entityPathDecoded0?.append(structure0)
                }
            }
        }
        entityPath = entityPathDecoded0
        let inferredDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .inferred)
        inferred = inferredDecoded
    }
}