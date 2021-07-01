// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePlayerSessionsOutputResponseBody: Equatable {
    public let playerSessions: [PlayerSession]?
}

extension CreatePlayerSessionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case playerSessions = "PlayerSessions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let playerSessionsContainer = try containerValues.decodeIfPresent([PlayerSession?].self, forKey: .playerSessions)
        var playerSessionsDecoded0:[PlayerSession]? = nil
        if let playerSessionsContainer = playerSessionsContainer {
            playerSessionsDecoded0 = [PlayerSession]()
            for structure0 in playerSessionsContainer {
                if let structure0 = structure0 {
                    playerSessionsDecoded0?.append(structure0)
                }
            }
        }
        playerSessions = playerSessionsDecoded0
    }
}