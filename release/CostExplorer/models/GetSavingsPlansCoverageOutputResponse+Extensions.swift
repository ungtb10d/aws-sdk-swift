// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSavingsPlansCoverageOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSavingsPlansCoverageOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.savingsPlansCoverages = output.savingsPlansCoverages
        } else {
            self.nextToken = nil
            self.savingsPlansCoverages = nil
        }
    }
}