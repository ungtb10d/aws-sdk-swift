// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RegisterOnPremisesInstanceOutputError: Equatable {
    case iamArnRequiredException(IamArnRequiredException)
    case iamSessionArnAlreadyRegisteredException(IamSessionArnAlreadyRegisteredException)
    case iamUserArnAlreadyRegisteredException(IamUserArnAlreadyRegisteredException)
    case iamUserArnRequiredException(IamUserArnRequiredException)
    case instanceNameAlreadyRegisteredException(InstanceNameAlreadyRegisteredException)
    case instanceNameRequiredException(InstanceNameRequiredException)
    case invalidIamSessionArnException(InvalidIamSessionArnException)
    case invalidIamUserArnException(InvalidIamUserArnException)
    case invalidInstanceNameException(InvalidInstanceNameException)
    case multipleIamArnsProvidedException(MultipleIamArnsProvidedException)
    case unknown(UnknownAWSHttpServiceError)
}