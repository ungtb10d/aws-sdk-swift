// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ConstraintViolationExceptionReason {
    case accountCannotLeaveOrganization
    case accountCannotLeaveWithoutEula
    case accountCannotLeaveWithoutPhoneVerification
    case accountCreationRateLimitExceeded
    case accountNumberLimitExceeded
    case cannotRegisterMasterAsDelegatedAdministrator
    case cannotRemoveDelegatedAdministratorFromOrg
    case createOrganizationInBillingModeUnsupportedRegion
    case delegatedAdministratorExistsForThisService
    case emailVerificationCodeExpired
    case handshakeRateLimitExceeded
    case masterAccountAddressDoesNotMatchMarketplace
    case masterAccountMissingBusinessLicense
    case masterAccountMissingContactInfo
    case masterAccountNotGovcloudEnabled
    case masterAccountPaymentInstrumentRequired
    case maxDelegatedAdministratorsForServiceLimitExceeded
    case maxPolicyTypeAttachmentLimitExceeded
    case maxTagLimitExceeded
    case memberAccountPaymentInstrumentRequired
    case minPolicyTypeAttachmentLimitExceeded
    case organizationNotInAllFeaturesMode
    case ouDepthLimitExceeded
    case ouNumberLimitExceeded
    case policyContentLimitExceeded
    case policyNumberLimitExceeded
    case tagPolicyViolation
    case waitPeriodActive
    case sdkUnknown(String)
}

extension ConstraintViolationExceptionReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ConstraintViolationExceptionReason] {
        return [
            .accountCannotLeaveOrganization,
            .accountCannotLeaveWithoutEula,
            .accountCannotLeaveWithoutPhoneVerification,
            .accountCreationRateLimitExceeded,
            .accountNumberLimitExceeded,
            .cannotRegisterMasterAsDelegatedAdministrator,
            .cannotRemoveDelegatedAdministratorFromOrg,
            .createOrganizationInBillingModeUnsupportedRegion,
            .delegatedAdministratorExistsForThisService,
            .emailVerificationCodeExpired,
            .handshakeRateLimitExceeded,
            .masterAccountAddressDoesNotMatchMarketplace,
            .masterAccountMissingBusinessLicense,
            .masterAccountMissingContactInfo,
            .masterAccountNotGovcloudEnabled,
            .masterAccountPaymentInstrumentRequired,
            .maxDelegatedAdministratorsForServiceLimitExceeded,
            .maxPolicyTypeAttachmentLimitExceeded,
            .maxTagLimitExceeded,
            .memberAccountPaymentInstrumentRequired,
            .minPolicyTypeAttachmentLimitExceeded,
            .organizationNotInAllFeaturesMode,
            .ouDepthLimitExceeded,
            .ouNumberLimitExceeded,
            .policyContentLimitExceeded,
            .policyNumberLimitExceeded,
            .tagPolicyViolation,
            .waitPeriodActive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .accountCannotLeaveOrganization: return "ACCOUNT_CANNOT_LEAVE_ORGANIZATION"
        case .accountCannotLeaveWithoutEula: return "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA"
        case .accountCannotLeaveWithoutPhoneVerification: return "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION"
        case .accountCreationRateLimitExceeded: return "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED"
        case .accountNumberLimitExceeded: return "ACCOUNT_NUMBER_LIMIT_EXCEEDED"
        case .cannotRegisterMasterAsDelegatedAdministrator: return "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR"
        case .cannotRemoveDelegatedAdministratorFromOrg: return "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG"
        case .createOrganizationInBillingModeUnsupportedRegion: return "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION"
        case .delegatedAdministratorExistsForThisService: return "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE"
        case .emailVerificationCodeExpired: return "EMAIL_VERIFICATION_CODE_EXPIRED"
        case .handshakeRateLimitExceeded: return "HANDSHAKE_RATE_LIMIT_EXCEEDED"
        case .masterAccountAddressDoesNotMatchMarketplace: return "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE"
        case .masterAccountMissingBusinessLicense: return "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE"
        case .masterAccountMissingContactInfo: return "MASTER_ACCOUNT_MISSING_CONTACT_INFO"
        case .masterAccountNotGovcloudEnabled: return "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED"
        case .masterAccountPaymentInstrumentRequired: return "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"
        case .maxDelegatedAdministratorsForServiceLimitExceeded: return "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED"
        case .maxPolicyTypeAttachmentLimitExceeded: return "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"
        case .maxTagLimitExceeded: return "MAX_TAG_LIMIT_EXCEEDED"
        case .memberAccountPaymentInstrumentRequired: return "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"
        case .minPolicyTypeAttachmentLimitExceeded: return "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"
        case .organizationNotInAllFeaturesMode: return "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE"
        case .ouDepthLimitExceeded: return "OU_DEPTH_LIMIT_EXCEEDED"
        case .ouNumberLimitExceeded: return "OU_NUMBER_LIMIT_EXCEEDED"
        case .policyContentLimitExceeded: return "POLICY_CONTENT_LIMIT_EXCEEDED"
        case .policyNumberLimitExceeded: return "POLICY_NUMBER_LIMIT_EXCEEDED"
        case .tagPolicyViolation: return "TAG_POLICY_VIOLATION"
        case .waitPeriodActive: return "WAIT_PERIOD_ACTIVE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ConstraintViolationExceptionReason(rawValue: rawValue) ?? ConstraintViolationExceptionReason.sdkUnknown(rawValue)
    }
}