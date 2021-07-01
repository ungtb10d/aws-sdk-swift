// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetParametersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetParametersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.invalidParameters = output.invalidParameters
            self.parameters = output.parameters
        } else {
            self.invalidParameters = nil
            self.parameters = nil
        }
    }
}