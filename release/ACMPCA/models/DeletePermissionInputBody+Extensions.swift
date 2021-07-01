// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeletePermissionInputBody: Equatable {
    public let certificateAuthorityArn: String?
    public let principal: String?
    public let sourceAccount: String?
}

extension DeletePermissionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case certificateAuthorityArn = "CertificateAuthorityArn"
        case principal = "Principal"
        case sourceAccount = "SourceAccount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let certificateAuthorityArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificateAuthorityArn)
        certificateAuthorityArn = certificateAuthorityArnDecoded
        let principalDecoded = try containerValues.decodeIfPresent(String.self, forKey: .principal)
        principal = principalDecoded
        let sourceAccountDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceAccount)
        sourceAccount = sourceAccountDecoded
    }
}