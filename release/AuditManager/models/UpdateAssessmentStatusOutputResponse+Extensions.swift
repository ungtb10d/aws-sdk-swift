// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateAssessmentStatusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateAssessmentStatusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.assessment = output.assessment
        } else {
            self.assessment = nil
        }
    }
}