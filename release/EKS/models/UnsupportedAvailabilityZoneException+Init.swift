// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UnsupportedAvailabilityZoneException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UnsupportedAvailabilityZoneExceptionBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.clusterName = output.clusterName
            self.message = output.message
            self.nodegroupName = output.nodegroupName
            self.validZones = output.validZones
        } else {
            self.clusterName = nil
            self.message = nil
            self.nodegroupName = nil
            self.validZones = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}