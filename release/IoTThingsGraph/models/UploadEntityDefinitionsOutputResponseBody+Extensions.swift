// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UploadEntityDefinitionsOutputResponseBody: Equatable {
    public let uploadId: String?
}

extension UploadEntityDefinitionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case uploadId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let uploadIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uploadId)
        uploadId = uploadIdDecoded
    }
}