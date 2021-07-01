// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GameSessionPlacement: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dnsName = "DnsName"
        case endTime = "EndTime"
        case gameProperties = "GameProperties"
        case gameSessionArn = "GameSessionArn"
        case gameSessionData = "GameSessionData"
        case gameSessionId = "GameSessionId"
        case gameSessionName = "GameSessionName"
        case gameSessionQueueName = "GameSessionQueueName"
        case gameSessionRegion = "GameSessionRegion"
        case ipAddress = "IpAddress"
        case matchmakerData = "MatchmakerData"
        case maximumPlayerSessionCount = "MaximumPlayerSessionCount"
        case placedPlayerSessions = "PlacedPlayerSessions"
        case placementId = "PlacementId"
        case playerLatencies = "PlayerLatencies"
        case port = "Port"
        case startTime = "StartTime"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dnsName = dnsName {
            try encodeContainer.encode(dnsName, forKey: .dnsName)
        }
        if let endTime = endTime {
            try encodeContainer.encode(endTime.timeIntervalSince1970, forKey: .endTime)
        }
        if let gameProperties = gameProperties {
            var gamePropertiesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .gameProperties)
            for gamepropertylist0 in gameProperties {
                try gamePropertiesContainer.encode(gamepropertylist0)
            }
        }
        if let gameSessionArn = gameSessionArn {
            try encodeContainer.encode(gameSessionArn, forKey: .gameSessionArn)
        }
        if let gameSessionData = gameSessionData {
            try encodeContainer.encode(gameSessionData, forKey: .gameSessionData)
        }
        if let gameSessionId = gameSessionId {
            try encodeContainer.encode(gameSessionId, forKey: .gameSessionId)
        }
        if let gameSessionName = gameSessionName {
            try encodeContainer.encode(gameSessionName, forKey: .gameSessionName)
        }
        if let gameSessionQueueName = gameSessionQueueName {
            try encodeContainer.encode(gameSessionQueueName, forKey: .gameSessionQueueName)
        }
        if let gameSessionRegion = gameSessionRegion {
            try encodeContainer.encode(gameSessionRegion, forKey: .gameSessionRegion)
        }
        if let ipAddress = ipAddress {
            try encodeContainer.encode(ipAddress, forKey: .ipAddress)
        }
        if let matchmakerData = matchmakerData {
            try encodeContainer.encode(matchmakerData, forKey: .matchmakerData)
        }
        if let maximumPlayerSessionCount = maximumPlayerSessionCount {
            try encodeContainer.encode(maximumPlayerSessionCount, forKey: .maximumPlayerSessionCount)
        }
        if let placedPlayerSessions = placedPlayerSessions {
            var placedPlayerSessionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .placedPlayerSessions)
            for placedplayersessionlist0 in placedPlayerSessions {
                try placedPlayerSessionsContainer.encode(placedplayersessionlist0)
            }
        }
        if let placementId = placementId {
            try encodeContainer.encode(placementId, forKey: .placementId)
        }
        if let playerLatencies = playerLatencies {
            var playerLatenciesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .playerLatencies)
            for playerlatencylist0 in playerLatencies {
                try playerLatenciesContainer.encode(playerlatencylist0)
            }
        }
        if let port = port {
            try encodeContainer.encode(port, forKey: .port)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let placementIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .placementId)
        placementId = placementIdDecoded
        let gameSessionQueueNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionQueueName)
        gameSessionQueueName = gameSessionQueueNameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(GameSessionPlacementState.self, forKey: .status)
        status = statusDecoded
        let gamePropertiesContainer = try containerValues.decodeIfPresent([GameProperty?].self, forKey: .gameProperties)
        var gamePropertiesDecoded0:[GameProperty]? = nil
        if let gamePropertiesContainer = gamePropertiesContainer {
            gamePropertiesDecoded0 = [GameProperty]()
            for structure0 in gamePropertiesContainer {
                if let structure0 = structure0 {
                    gamePropertiesDecoded0?.append(structure0)
                }
            }
        }
        gameProperties = gamePropertiesDecoded0
        let maximumPlayerSessionCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumPlayerSessionCount)
        maximumPlayerSessionCount = maximumPlayerSessionCountDecoded
        let gameSessionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionName)
        gameSessionName = gameSessionNameDecoded
        let gameSessionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionId)
        gameSessionId = gameSessionIdDecoded
        let gameSessionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionArn)
        gameSessionArn = gameSessionArnDecoded
        let gameSessionRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionRegion)
        gameSessionRegion = gameSessionRegionDecoded
        let playerLatenciesContainer = try containerValues.decodeIfPresent([PlayerLatency?].self, forKey: .playerLatencies)
        var playerLatenciesDecoded0:[PlayerLatency]? = nil
        if let playerLatenciesContainer = playerLatenciesContainer {
            playerLatenciesDecoded0 = [PlayerLatency]()
            for structure0 in playerLatenciesContainer {
                if let structure0 = structure0 {
                    playerLatenciesDecoded0?.append(structure0)
                }
            }
        }
        playerLatencies = playerLatenciesDecoded0
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endTime)
        endTime = endTimeDecoded
        let ipAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddress)
        ipAddress = ipAddressDecoded
        let dnsNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dnsName)
        dnsName = dnsNameDecoded
        let portDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .port)
        port = portDecoded
        let placedPlayerSessionsContainer = try containerValues.decodeIfPresent([PlacedPlayerSession?].self, forKey: .placedPlayerSessions)
        var placedPlayerSessionsDecoded0:[PlacedPlayerSession]? = nil
        if let placedPlayerSessionsContainer = placedPlayerSessionsContainer {
            placedPlayerSessionsDecoded0 = [PlacedPlayerSession]()
            for structure0 in placedPlayerSessionsContainer {
                if let structure0 = structure0 {
                    placedPlayerSessionsDecoded0?.append(structure0)
                }
            }
        }
        placedPlayerSessions = placedPlayerSessionsDecoded0
        let gameSessionDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .gameSessionData)
        gameSessionData = gameSessionDataDecoded
        let matchmakerDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .matchmakerData)
        matchmakerData = matchmakerDataDecoded
    }
}