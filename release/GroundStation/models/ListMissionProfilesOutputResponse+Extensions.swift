// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListMissionProfilesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListMissionProfilesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.missionProfileList = output.missionProfileList
            self.nextToken = output.nextToken
        } else {
            self.missionProfileList = nil
            self.nextToken = nil
        }
    }
}