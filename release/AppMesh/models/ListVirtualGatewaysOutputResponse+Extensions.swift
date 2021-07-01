// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListVirtualGatewaysOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListVirtualGatewaysOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.virtualGateways = output.virtualGateways
        } else {
            self.nextToken = nil
            self.virtualGateways = nil
        }
    }
}