// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteFleetLocationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteFleetLocationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.fleetArn = output.fleetArn
            self.fleetId = output.fleetId
            self.locationStates = output.locationStates
        } else {
            self.fleetArn = nil
            self.fleetId = nil
            self.locationStates = nil
        }
    }
}