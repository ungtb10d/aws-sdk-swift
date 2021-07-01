// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateInterconnectOutputResponseBody: Equatable {
    public let interconnectId: String?
    public let interconnectName: String?
    public let interconnectState: InterconnectState?
    public let region: String?
    public let location: String?
    public let bandwidth: String?
    public let loaIssueTime: Date?
    public let lagId: String?
    public let awsDevice: String?
    public let jumboFrameCapable: Bool?
    public let awsDeviceV2: String?
    public let hasLogicalRedundancy: HasLogicalRedundancy?
    public let tags: [Tag]?
    public let providerName: String?
}

extension CreateInterconnectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case awsDevice
        case awsDeviceV2
        case bandwidth
        case hasLogicalRedundancy
        case interconnectId
        case interconnectName
        case interconnectState
        case jumboFrameCapable
        case lagId
        case loaIssueTime
        case location
        case providerName
        case region
        case tags
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let interconnectIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .interconnectId)
        interconnectId = interconnectIdDecoded
        let interconnectNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .interconnectName)
        interconnectName = interconnectNameDecoded
        let interconnectStateDecoded = try containerValues.decodeIfPresent(InterconnectState.self, forKey: .interconnectState)
        interconnectState = interconnectStateDecoded
        let regionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .region)
        region = regionDecoded
        let locationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .location)
        location = locationDecoded
        let bandwidthDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bandwidth)
        bandwidth = bandwidthDecoded
        let loaIssueTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .loaIssueTime)
        loaIssueTime = loaIssueTimeDecoded
        let lagIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lagId)
        lagId = lagIdDecoded
        let awsDeviceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .awsDevice)
        awsDevice = awsDeviceDecoded
        let jumboFrameCapableDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .jumboFrameCapable)
        jumboFrameCapable = jumboFrameCapableDecoded
        let awsDeviceV2Decoded = try containerValues.decodeIfPresent(String.self, forKey: .awsDeviceV2)
        awsDeviceV2 = awsDeviceV2Decoded
        let hasLogicalRedundancyDecoded = try containerValues.decodeIfPresent(HasLogicalRedundancy.self, forKey: .hasLogicalRedundancy)
        hasLogicalRedundancy = hasLogicalRedundancyDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let providerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .providerName)
        providerName = providerNameDecoded
    }
}