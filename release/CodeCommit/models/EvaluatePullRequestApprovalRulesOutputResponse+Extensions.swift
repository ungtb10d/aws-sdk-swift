// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EvaluatePullRequestApprovalRulesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: EvaluatePullRequestApprovalRulesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.evaluation = output.evaluation
        } else {
            self.evaluation = nil
        }
    }
}