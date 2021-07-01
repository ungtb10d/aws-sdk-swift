// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListPoliciesGrantingServiceAccessOutputResponseBody: Equatable {
    public let policiesGrantingServiceAccess: [ListPoliciesGrantingServiceAccessEntry]?
    public let isTruncated: Bool
    public let marker: String?
}

extension ListPoliciesGrantingServiceAccessOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case isTruncated = "IsTruncated"
        case marker = "Marker"
        case policiesGrantingServiceAccess = "PoliciesGrantingServiceAccess"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListPoliciesGrantingServiceAccessResult"))
        if containerValues.contains(.policiesGrantingServiceAccess) {
            struct KeyVal0{struct member{}}
            let policiesGrantingServiceAccessWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .policiesGrantingServiceAccess)
            if let policiesGrantingServiceAccessWrappedContainer = policiesGrantingServiceAccessWrappedContainer {
                let policiesGrantingServiceAccessContainer = try policiesGrantingServiceAccessWrappedContainer.decodeIfPresent([ListPoliciesGrantingServiceAccessEntry].self, forKey: .member)
                var policiesGrantingServiceAccessBuffer:[ListPoliciesGrantingServiceAccessEntry]? = nil
                if let policiesGrantingServiceAccessContainer = policiesGrantingServiceAccessContainer {
                    policiesGrantingServiceAccessBuffer = [ListPoliciesGrantingServiceAccessEntry]()
                    for structureContainer0 in policiesGrantingServiceAccessContainer {
                        policiesGrantingServiceAccessBuffer?.append(structureContainer0)
                    }
                }
                policiesGrantingServiceAccess = policiesGrantingServiceAccessBuffer
            } else {
                policiesGrantingServiceAccess = []
            }
        } else {
            policiesGrantingServiceAccess = nil
        }
        let isTruncatedDecoded = try containerValues.decode(Bool.self, forKey: .isTruncated)
        isTruncated = isTruncatedDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}