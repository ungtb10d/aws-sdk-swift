// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetInvitationConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetInvitationConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.contactEmail = output.contactEmail
            self.organizationName = output.organizationName
            self.privateSkillIds = output.privateSkillIds
        } else {
            self.contactEmail = nil
            self.organizationName = nil
            self.privateSkillIds = nil
        }
    }
}