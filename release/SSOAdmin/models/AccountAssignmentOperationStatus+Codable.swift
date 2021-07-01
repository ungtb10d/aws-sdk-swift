// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AccountAssignmentOperationStatus: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdDate = "CreatedDate"
        case failureReason = "FailureReason"
        case permissionSetArn = "PermissionSetArn"
        case principalId = "PrincipalId"
        case principalType = "PrincipalType"
        case requestId = "RequestId"
        case status = "Status"
        case targetId = "TargetId"
        case targetType = "TargetType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdDate = createdDate {
            try encodeContainer.encode(createdDate.timeIntervalSince1970, forKey: .createdDate)
        }
        if let failureReason = failureReason {
            try encodeContainer.encode(failureReason, forKey: .failureReason)
        }
        if let permissionSetArn = permissionSetArn {
            try encodeContainer.encode(permissionSetArn, forKey: .permissionSetArn)
        }
        if let principalId = principalId {
            try encodeContainer.encode(principalId, forKey: .principalId)
        }
        if let principalType = principalType {
            try encodeContainer.encode(principalType.rawValue, forKey: .principalType)
        }
        if let requestId = requestId {
            try encodeContainer.encode(requestId, forKey: .requestId)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let targetId = targetId {
            try encodeContainer.encode(targetId, forKey: .targetId)
        }
        if let targetType = targetType {
            try encodeContainer.encode(targetType.rawValue, forKey: .targetType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(StatusValues.self, forKey: .status)
        status = statusDecoded
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
        let targetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetId)
        targetId = targetIdDecoded
        let targetTypeDecoded = try containerValues.decodeIfPresent(TargetType.self, forKey: .targetType)
        targetType = targetTypeDecoded
        let permissionSetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .permissionSetArn)
        permissionSetArn = permissionSetArnDecoded
        let principalTypeDecoded = try containerValues.decodeIfPresent(PrincipalType.self, forKey: .principalType)
        principalType = principalTypeDecoded
        let principalIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .principalId)
        principalId = principalIdDecoded
        let createdDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdDate)
        createdDate = createdDateDecoded
    }
}