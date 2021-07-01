// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StartEventsDetectionJobOutputError: Equatable {
    case internalServerException(InternalServerException)
    case invalidRequestException(InvalidRequestException)
    case kmsKeyValidationException(KmsKeyValidationException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}