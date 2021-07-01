// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PortProbeAction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case blocked = "blocked"
        case portProbeDetails = "portProbeDetails"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if blocked != false {
            try encodeContainer.encode(blocked, forKey: .blocked)
        }
        if let portProbeDetails = portProbeDetails {
            var portProbeDetailsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .portProbeDetails)
            for portprobedetails0 in portProbeDetails {
                try portProbeDetailsContainer.encode(portprobedetails0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let blockedDecoded = try containerValues.decode(Bool.self, forKey: .blocked)
        blocked = blockedDecoded
        let portProbeDetailsContainer = try containerValues.decodeIfPresent([PortProbeDetail?].self, forKey: .portProbeDetails)
        var portProbeDetailsDecoded0:[PortProbeDetail]? = nil
        if let portProbeDetailsContainer = portProbeDetailsContainer {
            portProbeDetailsDecoded0 = [PortProbeDetail]()
            for structure0 in portProbeDetailsContainer {
                if let structure0 = structure0 {
                    portProbeDetailsDecoded0?.append(structure0)
                }
            }
        }
        portProbeDetails = portProbeDetailsDecoded0
    }
}