// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListHostedZonesOutputError: Equatable {
    case delegationSetNotReusable(DelegationSetNotReusable)
    case invalidInput(InvalidInput)
    case noSuchDelegationSet(NoSuchDelegationSet)
    case unknown(UnknownAWSHttpServiceError)
}