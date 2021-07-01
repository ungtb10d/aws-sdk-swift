// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeSecurityConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeSecurityConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.creationDateTime = output.creationDateTime
            self.name = output.name
            self.securityConfiguration = output.securityConfiguration
        } else {
            self.creationDateTime = nil
            self.name = nil
            self.securityConfiguration = nil
        }
    }
}