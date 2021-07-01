// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListWirelessGatewayTaskDefinitionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListWirelessGatewayTaskDefinitionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.taskDefinitions = output.taskDefinitions
        } else {
            self.nextToken = nil
            self.taskDefinitions = nil
        }
    }
}