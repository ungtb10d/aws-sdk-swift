// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetAttendeeOutputResponseBody: Equatable {
    public let attendee: Attendee?
}

extension GetAttendeeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attendee = "Attendee"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attendeeDecoded = try containerValues.decodeIfPresent(Attendee.self, forKey: .attendee)
        attendee = attendeeDecoded
    }
}