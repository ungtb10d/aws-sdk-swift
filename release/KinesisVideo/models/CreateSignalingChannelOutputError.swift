// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateSignalingChannelOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case accountChannelLimitExceededException(AccountChannelLimitExceededException)
    case clientLimitExceededException(ClientLimitExceededException)
    case invalidArgumentException(InvalidArgumentException)
    case resourceInUseException(ResourceInUseException)
    case tagsPerResourceExceededLimitException(TagsPerResourceExceededLimitException)
    case unknown(UnknownAWSHttpServiceError)
}