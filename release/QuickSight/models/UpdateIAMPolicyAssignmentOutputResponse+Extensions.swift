// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateIAMPolicyAssignmentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateIAMPolicyAssignmentOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.assignmentId = output.assignmentId
            self.assignmentName = output.assignmentName
            self.assignmentStatus = output.assignmentStatus
            self.identities = output.identities
            self.policyArn = output.policyArn
            self.requestId = output.requestId
        } else {
            self.assignmentId = nil
            self.assignmentName = nil
            self.assignmentStatus = nil
            self.identities = nil
            self.policyArn = nil
            self.requestId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}