// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteDBProxyOutputError: Equatable {
    case dBProxyNotFoundFault(DBProxyNotFoundFault)
    case invalidDBProxyStateFault(InvalidDBProxyStateFault)
    case unknown(UnknownAWSHttpServiceError)
}