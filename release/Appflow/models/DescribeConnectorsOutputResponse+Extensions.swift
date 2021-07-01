// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeConnectorsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeConnectorsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.connectorConfigurations = output.connectorConfigurations
            self.nextToken = output.nextToken
        } else {
            self.connectorConfigurations = nil
            self.nextToken = nil
        }
    }
}