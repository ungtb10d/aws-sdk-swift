// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AddCommunicationToCaseInputBody: Equatable {
    public let caseId: String?
    public let communicationBody: String?
    public let ccEmailAddresses: [String]?
    public let attachmentSetId: String?
}

extension AddCommunicationToCaseInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attachmentSetId
        case caseId
        case ccEmailAddresses
        case communicationBody
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let caseIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .caseId)
        caseId = caseIdDecoded
        let communicationBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .communicationBody)
        communicationBody = communicationBodyDecoded
        let ccEmailAddressesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ccEmailAddresses)
        var ccEmailAddressesDecoded0:[String]? = nil
        if let ccEmailAddressesContainer = ccEmailAddressesContainer {
            ccEmailAddressesDecoded0 = [String]()
            for string0 in ccEmailAddressesContainer {
                if let string0 = string0 {
                    ccEmailAddressesDecoded0?.append(string0)
                }
            }
        }
        ccEmailAddresses = ccEmailAddressesDecoded0
        let attachmentSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attachmentSetId)
        attachmentSetId = attachmentSetIdDecoded
    }
}