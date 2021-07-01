// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TestRenderTemplateOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TestRenderTemplateOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.renderedTemplate = output.renderedTemplate
        } else {
            self.renderedTemplate = nil
        }
    }
}