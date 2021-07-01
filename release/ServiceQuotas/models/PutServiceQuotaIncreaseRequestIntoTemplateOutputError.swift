// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutServiceQuotaIncreaseRequestIntoTemplateOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case aWSServiceAccessNotEnabledException(AWSServiceAccessNotEnabledException)
    case dependencyAccessDeniedException(DependencyAccessDeniedException)
    case illegalArgumentException(IllegalArgumentException)
    case noAvailableOrganizationException(NoAvailableOrganizationException)
    case noSuchResourceException(NoSuchResourceException)
    case quotaExceededException(QuotaExceededException)
    case serviceException(ServiceException)
    case templatesNotAvailableInRegionException(TemplatesNotAvailableInRegionException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}