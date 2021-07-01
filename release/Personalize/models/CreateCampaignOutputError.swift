// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateCampaignOutputError: Equatable {
    case invalidInputException(InvalidInputException)
    case limitExceededException(LimitExceededException)
    case resourceAlreadyExistsException(ResourceAlreadyExistsException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}