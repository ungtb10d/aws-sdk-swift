// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CustomOriginConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hTTPPort = "HTTPPort"
        case hTTPSPort = "HTTPSPort"
        case originKeepaliveTimeout = "OriginKeepaliveTimeout"
        case originProtocolPolicy = "OriginProtocolPolicy"
        case originReadTimeout = "OriginReadTimeout"
        case originSslProtocols = "OriginSslProtocols"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let hTTPPort = hTTPPort {
            try container.encode(hTTPPort, forKey: Key("hTTPPort"))
        }
        if let hTTPSPort = hTTPSPort {
            try container.encode(hTTPSPort, forKey: Key("hTTPSPort"))
        }
        if let originKeepaliveTimeout = originKeepaliveTimeout {
            try container.encode(originKeepaliveTimeout, forKey: Key("originKeepaliveTimeout"))
        }
        if let originProtocolPolicy = originProtocolPolicy {
            try container.encode(originProtocolPolicy, forKey: Key("originProtocolPolicy"))
        }
        if let originReadTimeout = originReadTimeout {
            try container.encode(originReadTimeout, forKey: Key("originReadTimeout"))
        }
        if let originSslProtocols = originSslProtocols {
            try container.encode(originSslProtocols, forKey: Key("originSslProtocols"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hTTPPortDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .hTTPPort)
        hTTPPort = hTTPPortDecoded
        let hTTPSPortDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .hTTPSPort)
        hTTPSPort = hTTPSPortDecoded
        let originProtocolPolicyDecoded = try containerValues.decodeIfPresent(OriginProtocolPolicy.self, forKey: .originProtocolPolicy)
        originProtocolPolicy = originProtocolPolicyDecoded
        let originSslProtocolsDecoded = try containerValues.decodeIfPresent(OriginSslProtocols.self, forKey: .originSslProtocols)
        originSslProtocols = originSslProtocolsDecoded
        let originReadTimeoutDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .originReadTimeout)
        originReadTimeout = originReadTimeoutDecoded
        let originKeepaliveTimeoutDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .originKeepaliveTimeout)
        originKeepaliveTimeout = originKeepaliveTimeoutDecoded
    }
}