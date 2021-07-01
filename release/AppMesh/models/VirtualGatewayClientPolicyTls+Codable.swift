// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension VirtualGatewayClientPolicyTls: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificate
        case enforce
        case ports
        case validation
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificate = certificate {
            try encodeContainer.encode(certificate, forKey: .certificate)
        }
        if let enforce = enforce {
            try encodeContainer.encode(enforce, forKey: .enforce)
        }
        if let ports = ports {
            var portsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ports)
            for portset0 in ports {
                try portsContainer.encode(portset0)
            }
        }
        if let validation = validation {
            try encodeContainer.encode(validation, forKey: .validation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enforceDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enforce)
        enforce = enforceDecoded
        let portsContainer = try containerValues.decodeIfPresent(Set<Int>.self, forKey: .ports)
        var portsDecoded0:Set<Int>? = nil
        if let portsContainer = portsContainer {
            portsDecoded0 = Set<Int>()
            for integer0 in portsContainer {
                portsDecoded0?.insert(integer0)
            }
        }
        ports = portsDecoded0
        let certificateDecoded = try containerValues.decodeIfPresent(VirtualGatewayClientTlsCertificate.self, forKey: .certificate)
        certificate = certificateDecoded
        let validationDecoded = try containerValues.decodeIfPresent(VirtualGatewayTlsValidationContext.self, forKey: .validation)
        validation = validationDecoded
    }
}