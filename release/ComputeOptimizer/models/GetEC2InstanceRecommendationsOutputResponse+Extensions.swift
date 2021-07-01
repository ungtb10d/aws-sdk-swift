// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetEC2InstanceRecommendationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetEC2InstanceRecommendationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.errors = output.errors
            self.instanceRecommendations = output.instanceRecommendations
            self.nextToken = output.nextToken
        } else {
            self.errors = nil
            self.instanceRecommendations = nil
            self.nextToken = nil
        }
    }
}