// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension RemoveRoleFromDBInstanceOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension RemoveRoleFromDBInstanceOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "DBInstanceNotFoundFault" : self = .dBInstanceNotFoundFault(try DBInstanceNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBInstanceRoleNotFoundFault" : self = .dBInstanceRoleNotFoundFault(try DBInstanceRoleNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidDBInstanceStateFault" : self = .invalidDBInstanceStateFault(try InvalidDBInstanceStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}