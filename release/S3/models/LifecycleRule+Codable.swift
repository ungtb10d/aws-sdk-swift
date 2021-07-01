// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LifecycleRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abortIncompleteMultipartUpload = "AbortIncompleteMultipartUpload"
        case expiration = "Expiration"
        case filter = "Filter"
        case iD = "ID"
        case noncurrentVersionExpiration = "NoncurrentVersionExpiration"
        case noncurrentVersionTransitions = "NoncurrentVersionTransition"
        case prefix = "Prefix"
        case status = "Status"
        case transitions = "Transition"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let abortIncompleteMultipartUpload = abortIncompleteMultipartUpload {
            try container.encode(abortIncompleteMultipartUpload, forKey: Key("abortIncompleteMultipartUpload"))
        }
        if let expiration = expiration {
            try container.encode(expiration, forKey: Key("expiration"))
        }
        if let filter = filter {
            try container.encode(filter, forKey: Key("filter"))
        }
        if let iD = iD {
            try container.encode(iD, forKey: Key("iD"))
        }
        if let noncurrentVersionExpiration = noncurrentVersionExpiration {
            try container.encode(noncurrentVersionExpiration, forKey: Key("noncurrentVersionExpiration"))
        }
        if let noncurrentVersionTransitions = noncurrentVersionTransitions {
            if noncurrentVersionTransitions.isEmpty {
                var noncurrentVersionTransitionsContainer = container.nestedUnkeyedContainer(forKey: Key("NoncurrentVersionTransition"))
                try noncurrentVersionTransitionsContainer.encodeNil()
            } else {
                for noncurrentversiontransition0 in noncurrentVersionTransitions {
                    var noncurrentVersionTransitionsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("NoncurrentVersionTransition"))
                    try noncurrentVersionTransitionsContainer0.encode(noncurrentversiontransition0, forKey: Key(""))
                }
            }
        }
        if let prefix = prefix {
            try container.encode(prefix, forKey: Key("prefix"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
        if let transitions = transitions {
            if transitions.isEmpty {
                var transitionsContainer = container.nestedUnkeyedContainer(forKey: Key("Transition"))
                try transitionsContainer.encodeNil()
            } else {
                for transition0 in transitions {
                    var transitionsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("Transition"))
                    try transitionsContainer0.encode(transition0, forKey: Key(""))
                }
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let expirationDecoded = try containerValues.decodeIfPresent(LifecycleExpiration.self, forKey: .expiration)
        expiration = expirationDecoded
        let iDDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iD)
        iD = iDDecoded
        let prefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .prefix)
        prefix = prefixDecoded
        let filterDecoded = try containerValues.decodeIfPresent(LifecycleRuleFilter.self, forKey: .filter)
        filter = filterDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ExpirationStatus.self, forKey: .status)
        status = statusDecoded
        if containerValues.contains(.transitions) {
            let transitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .transitions)
            if transitionsWrappedContainer != nil {
                let transitionsContainer = try containerValues.decodeIfPresent([Transition].self, forKey: .transitions)
                var transitionsBuffer:[Transition]? = nil
                if let transitionsContainer = transitionsContainer {
                    transitionsBuffer = [Transition]()
                    for structureContainer0 in transitionsContainer {
                        transitionsBuffer?.append(structureContainer0)
                    }
                }
                transitions = transitionsBuffer
            } else {
                transitions = []
            }
        } else {
            transitions = nil
        }
        if containerValues.contains(.noncurrentVersionTransitions) {
            let noncurrentVersionTransitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .noncurrentVersionTransitions)
            if noncurrentVersionTransitionsWrappedContainer != nil {
                let noncurrentVersionTransitionsContainer = try containerValues.decodeIfPresent([NoncurrentVersionTransition].self, forKey: .noncurrentVersionTransitions)
                var noncurrentVersionTransitionsBuffer:[NoncurrentVersionTransition]? = nil
                if let noncurrentVersionTransitionsContainer = noncurrentVersionTransitionsContainer {
                    noncurrentVersionTransitionsBuffer = [NoncurrentVersionTransition]()
                    for structureContainer0 in noncurrentVersionTransitionsContainer {
                        noncurrentVersionTransitionsBuffer?.append(structureContainer0)
                    }
                }
                noncurrentVersionTransitions = noncurrentVersionTransitionsBuffer
            } else {
                noncurrentVersionTransitions = []
            }
        } else {
            noncurrentVersionTransitions = nil
        }
        let noncurrentVersionExpirationDecoded = try containerValues.decodeIfPresent(NoncurrentVersionExpiration.self, forKey: .noncurrentVersionExpiration)
        noncurrentVersionExpiration = noncurrentVersionExpirationDecoded
        let abortIncompleteMultipartUploadDecoded = try containerValues.decodeIfPresent(AbortIncompleteMultipartUpload.self, forKey: .abortIncompleteMultipartUpload)
        abortIncompleteMultipartUpload = abortIncompleteMultipartUploadDecoded
    }
}