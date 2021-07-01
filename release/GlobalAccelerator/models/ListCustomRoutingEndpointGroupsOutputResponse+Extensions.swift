// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListCustomRoutingEndpointGroupsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListCustomRoutingEndpointGroupsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.endpointGroups = output.endpointGroups
            self.nextToken = output.nextToken
        } else {
            self.endpointGroups = nil
            self.nextToken = nil
        }
    }
}