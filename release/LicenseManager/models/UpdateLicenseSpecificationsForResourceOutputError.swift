// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateLicenseSpecificationsForResourceOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case authorizationException(AuthorizationException)
    case invalidParameterValueException(InvalidParameterValueException)
    case invalidResourceStateException(InvalidResourceStateException)
    case licenseUsageException(LicenseUsageException)
    case rateLimitExceededException(RateLimitExceededException)
    case serverInternalException(ServerInternalException)
    case unknown(UnknownAWSHttpServiceError)
}