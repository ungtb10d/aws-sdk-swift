// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetLaunchProfileInitializationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetLaunchProfileInitializationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.launchProfileInitialization = output.launchProfileInitialization
        } else {
            self.launchProfileInitialization = nil
        }
    }
}