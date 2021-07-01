// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListUsersOutputResponseBody: Equatable {
    public let users: [User]?
    public let isTruncated: Bool
    public let marker: String?
}

extension ListUsersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case isTruncated = "IsTruncated"
        case marker = "Marker"
        case users = "Users"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListUsersResult"))
        if containerValues.contains(.users) {
            struct KeyVal0{struct member{}}
            let usersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .users)
            if let usersWrappedContainer = usersWrappedContainer {
                let usersContainer = try usersWrappedContainer.decodeIfPresent([User].self, forKey: .member)
                var usersBuffer:[User]? = nil
                if let usersContainer = usersContainer {
                    usersBuffer = [User]()
                    for structureContainer0 in usersContainer {
                        usersBuffer?.append(structureContainer0)
                    }
                }
                users = usersBuffer
            } else {
                users = []
            }
        } else {
            users = nil
        }
        let isTruncatedDecoded = try containerValues.decode(Bool.self, forKey: .isTruncated)
        isTruncated = isTruncatedDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}