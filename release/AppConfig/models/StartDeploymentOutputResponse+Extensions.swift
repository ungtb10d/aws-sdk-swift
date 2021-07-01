// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartDeploymentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartDeploymentOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.applicationId = output.applicationId
            self.completedAt = output.completedAt
            self.configurationLocationUri = output.configurationLocationUri
            self.configurationName = output.configurationName
            self.configurationProfileId = output.configurationProfileId
            self.configurationVersion = output.configurationVersion
            self.deploymentDurationInMinutes = output.deploymentDurationInMinutes
            self.deploymentNumber = output.deploymentNumber
            self.deploymentStrategyId = output.deploymentStrategyId
            self.description = output.description
            self.environmentId = output.environmentId
            self.eventLog = output.eventLog
            self.finalBakeTimeInMinutes = output.finalBakeTimeInMinutes
            self.growthFactor = output.growthFactor
            self.growthType = output.growthType
            self.percentageComplete = output.percentageComplete
            self.startedAt = output.startedAt
            self.state = output.state
        } else {
            self.applicationId = nil
            self.completedAt = nil
            self.configurationLocationUri = nil
            self.configurationName = nil
            self.configurationProfileId = nil
            self.configurationVersion = nil
            self.deploymentDurationInMinutes = 0
            self.deploymentNumber = 0
            self.deploymentStrategyId = nil
            self.description = nil
            self.environmentId = nil
            self.eventLog = nil
            self.finalBakeTimeInMinutes = 0
            self.growthFactor = 0.0
            self.growthType = nil
            self.percentageComplete = 0.0
            self.startedAt = nil
            self.state = nil
        }
    }
}