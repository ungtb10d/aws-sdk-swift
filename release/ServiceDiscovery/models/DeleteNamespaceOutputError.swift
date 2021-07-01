// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteNamespaceOutputError: Equatable {
    case duplicateRequest(DuplicateRequest)
    case invalidInput(InvalidInput)
    case namespaceNotFound(NamespaceNotFound)
    case resourceInUse(ResourceInUse)
    case unknown(UnknownAWSHttpServiceError)
}