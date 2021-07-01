// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateSizeConstraintSetOutputResponseBody: Equatable {
    public let sizeConstraintSet: SizeConstraintSet?
    public let changeToken: String?
}

extension CreateSizeConstraintSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case changeToken = "ChangeToken"
        case sizeConstraintSet = "SizeConstraintSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sizeConstraintSetDecoded = try containerValues.decodeIfPresent(SizeConstraintSet.self, forKey: .sizeConstraintSet)
        sizeConstraintSet = sizeConstraintSetDecoded
        let changeTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .changeToken)
        changeToken = changeTokenDecoded
    }
}