// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListIAMPolicyAssignmentsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListIAMPolicyAssignmentsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.iAMPolicyAssignments = output.iAMPolicyAssignments
            self.nextToken = output.nextToken
            self.requestId = output.requestId
        } else {
            self.iAMPolicyAssignments = nil
            self.nextToken = nil
            self.requestId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}