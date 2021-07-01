// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDefaultCreditSpecificationOutputResponseBody: Equatable {
    public let instanceFamilyCreditSpecification: InstanceFamilyCreditSpecification?
}

extension GetDefaultCreditSpecificationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case instanceFamilyCreditSpecification = "instanceFamilyCreditSpecification"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceFamilyCreditSpecificationDecoded = try containerValues.decodeIfPresent(InstanceFamilyCreditSpecification.self, forKey: .instanceFamilyCreditSpecification)
        instanceFamilyCreditSpecification = instanceFamilyCreditSpecificationDecoded
    }
}