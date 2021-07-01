// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension AccessPointAlreadyExists: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AccessPointAlreadyExistsBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.accessPointId = output.accessPointId
            self.errorCode = output.errorCode
            self.message = output.message
        } else {
            self.accessPointId = nil
            self.errorCode = nil
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}