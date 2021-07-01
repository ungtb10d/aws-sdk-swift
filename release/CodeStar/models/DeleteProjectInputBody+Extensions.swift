// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteProjectInputBody: Equatable {
    public let id: String?
    public let clientRequestToken: String?
    public let deleteStack: Bool
}

extension DeleteProjectInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case deleteStack
        case id
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
        let deleteStackDecoded = try containerValues.decode(Bool.self, forKey: .deleteStack)
        deleteStack = deleteStackDecoded
    }
}