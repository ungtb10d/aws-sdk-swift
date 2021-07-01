// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSipMediaApplicationsOutputResponseBody: Equatable {
    public let sipMediaApplications: [SipMediaApplication]?
    public let nextToken: String?
}

extension ListSipMediaApplicationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case sipMediaApplications = "SipMediaApplications"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sipMediaApplicationsContainer = try containerValues.decodeIfPresent([SipMediaApplication?].self, forKey: .sipMediaApplications)
        var sipMediaApplicationsDecoded0:[SipMediaApplication]? = nil
        if let sipMediaApplicationsContainer = sipMediaApplicationsContainer {
            sipMediaApplicationsDecoded0 = [SipMediaApplication]()
            for structure0 in sipMediaApplicationsContainer {
                if let structure0 = structure0 {
                    sipMediaApplicationsDecoded0?.append(structure0)
                }
            }
        }
        sipMediaApplications = sipMediaApplicationsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}