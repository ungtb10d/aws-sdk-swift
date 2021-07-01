// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SyncResourceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SyncResourceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.actionTaken = output.actionTaken
            self.applicationArn = output.applicationArn
            self.resourceArn = output.resourceArn
        } else {
            self.actionTaken = nil
            self.applicationArn = nil
            self.resourceArn = nil
        }
    }
}