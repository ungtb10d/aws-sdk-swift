// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension RevokeEndpointAccessOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension RevokeEndpointAccessOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "ClusterNotFoundFault" : self = .clusterNotFoundFault(try ClusterNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EndpointAuthorizationNotFoundFault" : self = .endpointAuthorizationNotFoundFault(try EndpointAuthorizationNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "EndpointNotFoundFault" : self = .endpointNotFoundFault(try EndpointNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidAuthorizationStateFault" : self = .invalidAuthorizationStateFault(try InvalidAuthorizationStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidClusterSecurityGroupStateFault" : self = .invalidClusterSecurityGroupStateFault(try InvalidClusterSecurityGroupStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidClusterStateFault" : self = .invalidClusterStateFault(try InvalidClusterStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidEndpointStateFault" : self = .invalidEndpointStateFault(try InvalidEndpointStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}