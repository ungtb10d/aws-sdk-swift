// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3Grant: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case grantee = "Grantee"
        case permission = "Permission"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let grantee = grantee {
            try container.encode(grantee, forKey: Key("grantee"))
        }
        if let permission = permission {
            try container.encode(permission, forKey: Key("permission"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let granteeDecoded = try containerValues.decodeIfPresent(S3Grantee.self, forKey: .grantee)
        grantee = granteeDecoded
        let permissionDecoded = try containerValues.decodeIfPresent(S3Permission.self, forKey: .permission)
        permission = permissionDecoded
    }
}