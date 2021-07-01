// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DetachObjectInputBody: Equatable {
    public let parentReference: ObjectReference?
    public let linkName: String?
}

extension DetachObjectInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case linkName = "LinkName"
        case parentReference = "ParentReference"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parentReferenceDecoded = try containerValues.decodeIfPresent(ObjectReference.self, forKey: .parentReference)
        parentReference = parentReferenceDecoded
        let linkNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .linkName)
        linkName = linkNameDecoded
    }
}