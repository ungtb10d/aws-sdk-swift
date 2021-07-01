// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RejectVpcEndpointConnectionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: RejectVpcEndpointConnectionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.unsuccessful = output.unsuccessful
        } else {
            self.unsuccessful = nil
        }
    }
}