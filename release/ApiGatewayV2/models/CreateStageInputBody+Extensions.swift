// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateStageInputBody: Equatable {
    public let accessLogSettings: AccessLogSettings?
    public let autoDeploy: Bool
    public let clientCertificateId: String?
    public let defaultRouteSettings: RouteSettings?
    public let deploymentId: String?
    public let description: String?
    public let routeSettings: [String:RouteSettings]?
    public let stageName: String?
    public let stageVariables: [String:String]?
    public let tags: [String:String]?
}

extension CreateStageInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accessLogSettings = "accessLogSettings"
        case autoDeploy = "autoDeploy"
        case clientCertificateId = "clientCertificateId"
        case defaultRouteSettings = "defaultRouteSettings"
        case deploymentId = "deploymentId"
        case description = "description"
        case routeSettings = "routeSettings"
        case stageName = "stageName"
        case stageVariables = "stageVariables"
        case tags = "tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessLogSettingsDecoded = try containerValues.decodeIfPresent(AccessLogSettings.self, forKey: .accessLogSettings)
        accessLogSettings = accessLogSettingsDecoded
        let autoDeployDecoded = try containerValues.decode(Bool.self, forKey: .autoDeploy)
        autoDeploy = autoDeployDecoded
        let clientCertificateIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientCertificateId)
        clientCertificateId = clientCertificateIdDecoded
        let defaultRouteSettingsDecoded = try containerValues.decodeIfPresent(RouteSettings.self, forKey: .defaultRouteSettings)
        defaultRouteSettings = defaultRouteSettingsDecoded
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let routeSettingsContainer = try containerValues.decodeIfPresent([String: RouteSettings?].self, forKey: .routeSettings)
        var routeSettingsDecoded0: [String:RouteSettings]? = nil
        if let routeSettingsContainer = routeSettingsContainer {
            routeSettingsDecoded0 = [String:RouteSettings]()
            for (key0, routesettings0) in routeSettingsContainer {
                if let routesettings0 = routesettings0 {
                    routeSettingsDecoded0?[key0] = routesettings0
                }
            }
        }
        routeSettings = routeSettingsDecoded0
        let stageNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stageName)
        stageName = stageNameDecoded
        let stageVariablesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .stageVariables)
        var stageVariablesDecoded0: [String:String]? = nil
        if let stageVariablesContainer = stageVariablesContainer {
            stageVariablesDecoded0 = [String:String]()
            for (key0, stringwithlengthbetween0and20480) in stageVariablesContainer {
                if let stringwithlengthbetween0and20480 = stringwithlengthbetween0and20480 {
                    stageVariablesDecoded0?[key0] = stringwithlengthbetween0and20480
                }
            }
        }
        stageVariables = stageVariablesDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, stringwithlengthbetween1and16000) in tagsContainer {
                if let stringwithlengthbetween1and16000 = stringwithlengthbetween1and16000 {
                    tagsDecoded0?[key0] = stringwithlengthbetween1and16000
                }
            }
        }
        tags = tagsDecoded0
    }
}