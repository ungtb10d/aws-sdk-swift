// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NotifyWhenUploadedOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: NotifyWhenUploadedOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.fileShareARN = output.fileShareARN
            self.notificationId = output.notificationId
        } else {
            self.fileShareARN = nil
            self.notificationId = nil
        }
    }
}