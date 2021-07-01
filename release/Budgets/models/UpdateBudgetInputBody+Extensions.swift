// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateBudgetInputBody: Equatable {
    public let accountId: String?
    public let newBudget: Budget?
}

extension UpdateBudgetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case newBudget = "NewBudget"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accountIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountId)
        accountId = accountIdDecoded
        let newBudgetDecoded = try containerValues.decodeIfPresent(Budget.self, forKey: .newBudget)
        newBudget = newBudgetDecoded
    }
}