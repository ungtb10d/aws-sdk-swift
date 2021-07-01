// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAccountAssignmentDeletionStatusOutputResponseBody: Equatable {
    public let accountAssignmentDeletionStatus: AccountAssignmentOperationStatus?
}

extension DescribeAccountAssignmentDeletionStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accountAssignmentDeletionStatus = "AccountAssignmentDeletionStatus"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accountAssignmentDeletionStatusDecoded = try containerValues.decodeIfPresent(AccountAssignmentOperationStatus.self, forKey: .accountAssignmentDeletionStatus)
        accountAssignmentDeletionStatus = accountAssignmentDeletionStatusDecoded
    }
}