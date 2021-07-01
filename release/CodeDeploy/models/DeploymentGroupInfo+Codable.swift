// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeploymentGroupInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case alarmConfiguration
        case applicationName
        case autoRollbackConfiguration
        case autoScalingGroups
        case blueGreenDeploymentConfiguration
        case computePlatform
        case deploymentConfigName
        case deploymentGroupId
        case deploymentGroupName
        case deploymentStyle
        case ec2TagFilters
        case ec2TagSet
        case ecsServices
        case lastAttemptedDeployment
        case lastSuccessfulDeployment
        case loadBalancerInfo
        case onPremisesInstanceTagFilters
        case onPremisesTagSet
        case outdatedInstancesStrategy
        case serviceRoleArn
        case targetRevision
        case triggerConfigurations
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let alarmConfiguration = alarmConfiguration {
            try encodeContainer.encode(alarmConfiguration, forKey: .alarmConfiguration)
        }
        if let applicationName = applicationName {
            try encodeContainer.encode(applicationName, forKey: .applicationName)
        }
        if let autoRollbackConfiguration = autoRollbackConfiguration {
            try encodeContainer.encode(autoRollbackConfiguration, forKey: .autoRollbackConfiguration)
        }
        if let autoScalingGroups = autoScalingGroups {
            var autoScalingGroupsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .autoScalingGroups)
            for autoscalinggrouplist0 in autoScalingGroups {
                try autoScalingGroupsContainer.encode(autoscalinggrouplist0)
            }
        }
        if let blueGreenDeploymentConfiguration = blueGreenDeploymentConfiguration {
            try encodeContainer.encode(blueGreenDeploymentConfiguration, forKey: .blueGreenDeploymentConfiguration)
        }
        if let computePlatform = computePlatform {
            try encodeContainer.encode(computePlatform.rawValue, forKey: .computePlatform)
        }
        if let deploymentConfigName = deploymentConfigName {
            try encodeContainer.encode(deploymentConfigName, forKey: .deploymentConfigName)
        }
        if let deploymentGroupId = deploymentGroupId {
            try encodeContainer.encode(deploymentGroupId, forKey: .deploymentGroupId)
        }
        if let deploymentGroupName = deploymentGroupName {
            try encodeContainer.encode(deploymentGroupName, forKey: .deploymentGroupName)
        }
        if let deploymentStyle = deploymentStyle {
            try encodeContainer.encode(deploymentStyle, forKey: .deploymentStyle)
        }
        if let ec2TagFilters = ec2TagFilters {
            var ec2TagFiltersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ec2TagFilters)
            for ec2tagfilterlist0 in ec2TagFilters {
                try ec2TagFiltersContainer.encode(ec2tagfilterlist0)
            }
        }
        if let ec2TagSet = ec2TagSet {
            try encodeContainer.encode(ec2TagSet, forKey: .ec2TagSet)
        }
        if let ecsServices = ecsServices {
            var ecsServicesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ecsServices)
            for ecsservicelist0 in ecsServices {
                try ecsServicesContainer.encode(ecsservicelist0)
            }
        }
        if let lastAttemptedDeployment = lastAttemptedDeployment {
            try encodeContainer.encode(lastAttemptedDeployment, forKey: .lastAttemptedDeployment)
        }
        if let lastSuccessfulDeployment = lastSuccessfulDeployment {
            try encodeContainer.encode(lastSuccessfulDeployment, forKey: .lastSuccessfulDeployment)
        }
        if let loadBalancerInfo = loadBalancerInfo {
            try encodeContainer.encode(loadBalancerInfo, forKey: .loadBalancerInfo)
        }
        if let onPremisesInstanceTagFilters = onPremisesInstanceTagFilters {
            var onPremisesInstanceTagFiltersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .onPremisesInstanceTagFilters)
            for tagfilterlist0 in onPremisesInstanceTagFilters {
                try onPremisesInstanceTagFiltersContainer.encode(tagfilterlist0)
            }
        }
        if let onPremisesTagSet = onPremisesTagSet {
            try encodeContainer.encode(onPremisesTagSet, forKey: .onPremisesTagSet)
        }
        if let outdatedInstancesStrategy = outdatedInstancesStrategy {
            try encodeContainer.encode(outdatedInstancesStrategy.rawValue, forKey: .outdatedInstancesStrategy)
        }
        if let serviceRoleArn = serviceRoleArn {
            try encodeContainer.encode(serviceRoleArn, forKey: .serviceRoleArn)
        }
        if let targetRevision = targetRevision {
            try encodeContainer.encode(targetRevision, forKey: .targetRevision)
        }
        if let triggerConfigurations = triggerConfigurations {
            var triggerConfigurationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .triggerConfigurations)
            for triggerconfiglist0 in triggerConfigurations {
                try triggerConfigurationsContainer.encode(triggerconfiglist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let deploymentGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentGroupId)
        deploymentGroupId = deploymentGroupIdDecoded
        let deploymentGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentGroupName)
        deploymentGroupName = deploymentGroupNameDecoded
        let deploymentConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentConfigName)
        deploymentConfigName = deploymentConfigNameDecoded
        let ec2TagFiltersContainer = try containerValues.decodeIfPresent([EC2TagFilter?].self, forKey: .ec2TagFilters)
        var ec2TagFiltersDecoded0:[EC2TagFilter]? = nil
        if let ec2TagFiltersContainer = ec2TagFiltersContainer {
            ec2TagFiltersDecoded0 = [EC2TagFilter]()
            for structure0 in ec2TagFiltersContainer {
                if let structure0 = structure0 {
                    ec2TagFiltersDecoded0?.append(structure0)
                }
            }
        }
        ec2TagFilters = ec2TagFiltersDecoded0
        let onPremisesInstanceTagFiltersContainer = try containerValues.decodeIfPresent([TagFilter?].self, forKey: .onPremisesInstanceTagFilters)
        var onPremisesInstanceTagFiltersDecoded0:[TagFilter]? = nil
        if let onPremisesInstanceTagFiltersContainer = onPremisesInstanceTagFiltersContainer {
            onPremisesInstanceTagFiltersDecoded0 = [TagFilter]()
            for structure0 in onPremisesInstanceTagFiltersContainer {
                if let structure0 = structure0 {
                    onPremisesInstanceTagFiltersDecoded0?.append(structure0)
                }
            }
        }
        onPremisesInstanceTagFilters = onPremisesInstanceTagFiltersDecoded0
        let autoScalingGroupsContainer = try containerValues.decodeIfPresent([AutoScalingGroup?].self, forKey: .autoScalingGroups)
        var autoScalingGroupsDecoded0:[AutoScalingGroup]? = nil
        if let autoScalingGroupsContainer = autoScalingGroupsContainer {
            autoScalingGroupsDecoded0 = [AutoScalingGroup]()
            for structure0 in autoScalingGroupsContainer {
                if let structure0 = structure0 {
                    autoScalingGroupsDecoded0?.append(structure0)
                }
            }
        }
        autoScalingGroups = autoScalingGroupsDecoded0
        let serviceRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceRoleArn)
        serviceRoleArn = serviceRoleArnDecoded
        let targetRevisionDecoded = try containerValues.decodeIfPresent(RevisionLocation.self, forKey: .targetRevision)
        targetRevision = targetRevisionDecoded
        let triggerConfigurationsContainer = try containerValues.decodeIfPresent([TriggerConfig?].self, forKey: .triggerConfigurations)
        var triggerConfigurationsDecoded0:[TriggerConfig]? = nil
        if let triggerConfigurationsContainer = triggerConfigurationsContainer {
            triggerConfigurationsDecoded0 = [TriggerConfig]()
            for structure0 in triggerConfigurationsContainer {
                if let structure0 = structure0 {
                    triggerConfigurationsDecoded0?.append(structure0)
                }
            }
        }
        triggerConfigurations = triggerConfigurationsDecoded0
        let alarmConfigurationDecoded = try containerValues.decodeIfPresent(AlarmConfiguration.self, forKey: .alarmConfiguration)
        alarmConfiguration = alarmConfigurationDecoded
        let autoRollbackConfigurationDecoded = try containerValues.decodeIfPresent(AutoRollbackConfiguration.self, forKey: .autoRollbackConfiguration)
        autoRollbackConfiguration = autoRollbackConfigurationDecoded
        let deploymentStyleDecoded = try containerValues.decodeIfPresent(DeploymentStyle.self, forKey: .deploymentStyle)
        deploymentStyle = deploymentStyleDecoded
        let outdatedInstancesStrategyDecoded = try containerValues.decodeIfPresent(OutdatedInstancesStrategy.self, forKey: .outdatedInstancesStrategy)
        outdatedInstancesStrategy = outdatedInstancesStrategyDecoded
        let blueGreenDeploymentConfigurationDecoded = try containerValues.decodeIfPresent(BlueGreenDeploymentConfiguration.self, forKey: .blueGreenDeploymentConfiguration)
        blueGreenDeploymentConfiguration = blueGreenDeploymentConfigurationDecoded
        let loadBalancerInfoDecoded = try containerValues.decodeIfPresent(LoadBalancerInfo.self, forKey: .loadBalancerInfo)
        loadBalancerInfo = loadBalancerInfoDecoded
        let lastSuccessfulDeploymentDecoded = try containerValues.decodeIfPresent(LastDeploymentInfo.self, forKey: .lastSuccessfulDeployment)
        lastSuccessfulDeployment = lastSuccessfulDeploymentDecoded
        let lastAttemptedDeploymentDecoded = try containerValues.decodeIfPresent(LastDeploymentInfo.self, forKey: .lastAttemptedDeployment)
        lastAttemptedDeployment = lastAttemptedDeploymentDecoded
        let ec2TagSetDecoded = try containerValues.decodeIfPresent(EC2TagSet.self, forKey: .ec2TagSet)
        ec2TagSet = ec2TagSetDecoded
        let onPremisesTagSetDecoded = try containerValues.decodeIfPresent(OnPremisesTagSet.self, forKey: .onPremisesTagSet)
        onPremisesTagSet = onPremisesTagSetDecoded
        let computePlatformDecoded = try containerValues.decodeIfPresent(ComputePlatform.self, forKey: .computePlatform)
        computePlatform = computePlatformDecoded
        let ecsServicesContainer = try containerValues.decodeIfPresent([ECSService?].self, forKey: .ecsServices)
        var ecsServicesDecoded0:[ECSService]? = nil
        if let ecsServicesContainer = ecsServicesContainer {
            ecsServicesDecoded0 = [ECSService]()
            for structure0 in ecsServicesContainer {
                if let structure0 = structure0 {
                    ecsServicesDecoded0?.append(structure0)
                }
            }
        }
        ecsServices = ecsServicesDecoded0
    }
}