// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Server: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case replicationJobId
        case replicationJobTerminated
        case serverId
        case serverType
        case vmServer
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let replicationJobId = replicationJobId {
            try encodeContainer.encode(replicationJobId, forKey: .replicationJobId)
        }
        if let replicationJobTerminated = replicationJobTerminated {
            try encodeContainer.encode(replicationJobTerminated, forKey: .replicationJobTerminated)
        }
        if let serverId = serverId {
            try encodeContainer.encode(serverId, forKey: .serverId)
        }
        if let serverType = serverType {
            try encodeContainer.encode(serverType.rawValue, forKey: .serverType)
        }
        if let vmServer = vmServer {
            try encodeContainer.encode(vmServer, forKey: .vmServer)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverId)
        serverId = serverIdDecoded
        let serverTypeDecoded = try containerValues.decodeIfPresent(ServerType.self, forKey: .serverType)
        serverType = serverTypeDecoded
        let vmServerDecoded = try containerValues.decodeIfPresent(VmServer.self, forKey: .vmServer)
        vmServer = vmServerDecoded
        let replicationJobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationJobId)
        replicationJobId = replicationJobIdDecoded
        let replicationJobTerminatedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .replicationJobTerminated)
        replicationJobTerminated = replicationJobTerminatedDecoded
    }
}