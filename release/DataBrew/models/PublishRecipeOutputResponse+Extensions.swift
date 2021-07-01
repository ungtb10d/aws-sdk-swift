// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PublishRecipeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PublishRecipeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.name = output.name
        } else {
            self.name = nil
        }
    }
}