// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SetRiskConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SetRiskConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.riskConfiguration = output.riskConfiguration
        } else {
            self.riskConfiguration = nil
        }
    }
}