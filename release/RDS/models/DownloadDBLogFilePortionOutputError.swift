// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DownloadDBLogFilePortionOutputError: Equatable {
    case dBInstanceNotFoundFault(DBInstanceNotFoundFault)
    case dBLogFileNotFoundFault(DBLogFileNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}