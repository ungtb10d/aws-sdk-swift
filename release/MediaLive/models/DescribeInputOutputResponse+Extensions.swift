// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeInputOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeInputOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.attachedChannels = output.attachedChannels
            self.destinations = output.destinations
            self.id = output.id
            self.inputClass = output.inputClass
            self.inputDevices = output.inputDevices
            self.inputPartnerIds = output.inputPartnerIds
            self.inputSourceType = output.inputSourceType
            self.mediaConnectFlows = output.mediaConnectFlows
            self.name = output.name
            self.roleArn = output.roleArn
            self.securityGroups = output.securityGroups
            self.sources = output.sources
            self.state = output.state
            self.tags = output.tags
            self.type = output.type
        } else {
            self.arn = nil
            self.attachedChannels = nil
            self.destinations = nil
            self.id = nil
            self.inputClass = nil
            self.inputDevices = nil
            self.inputPartnerIds = nil
            self.inputSourceType = nil
            self.mediaConnectFlows = nil
            self.name = nil
            self.roleArn = nil
            self.securityGroups = nil
            self.sources = nil
            self.state = nil
            self.tags = nil
            self.type = nil
        }
    }
}