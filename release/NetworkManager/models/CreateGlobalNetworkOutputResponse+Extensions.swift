// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateGlobalNetworkOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateGlobalNetworkOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.globalNetwork = output.globalNetwork
        } else {
            self.globalNetwork = nil
        }
    }
}