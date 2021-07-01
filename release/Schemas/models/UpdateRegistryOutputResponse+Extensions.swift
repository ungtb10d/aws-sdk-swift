// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateRegistryOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateRegistryOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.description = output.description
            self.registryArn = output.registryArn
            self.registryName = output.registryName
            self.tags = output.tags
        } else {
            self.description = nil
            self.registryArn = nil
            self.registryName = nil
            self.tags = nil
        }
    }
}