// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension ResizeClusterOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension ResizeClusterOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ClusterNotFoundFault" : self = .clusterNotFoundFault(try ClusterNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientClusterCapacityFault" : self = .insufficientClusterCapacityFault(try InsufficientClusterCapacityFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidClusterStateFault" : self = .invalidClusterStateFault(try InvalidClusterStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "LimitExceededFault" : self = .limitExceededFault(try LimitExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NumberOfNodesPerClusterLimitExceededFault" : self = .numberOfNodesPerClusterLimitExceededFault(try NumberOfNodesPerClusterLimitExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NumberOfNodesQuotaExceededFault" : self = .numberOfNodesQuotaExceededFault(try NumberOfNodesQuotaExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnauthorizedOperation" : self = .unauthorizedOperation(try UnauthorizedOperation(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedOperationFault" : self = .unsupportedOperationFault(try UnsupportedOperationFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedOptionFault" : self = .unsupportedOptionFault(try UnsupportedOptionFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}