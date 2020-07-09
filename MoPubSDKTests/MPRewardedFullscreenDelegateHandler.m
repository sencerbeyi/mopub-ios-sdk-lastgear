//
//  MPRewardedFullscreenDelegateHandler.m
//  MoPubSDKTests
//
//  Created by Kelly Dun on 7/8/20.
//  Copyright © 2020 MoPub. All rights reserved.
//

#import "MPRewardedFullscreenDelegateHandler.h"

@implementation MPRewardedFullscreenDelegateHandler

#pragma mark - MPAdAdapterBaseDelegate

- (void)adapter:(id<MPAdAdapter> _Nullable)adapter didFailToLoadAdWithError:(NSError * _Nullable)error {
    // no op for now
}

- (void)adapter:(id<MPAdAdapter> _Nullable)adapter didFailToPlayAdWithError:(NSError *)error {
    // no op for now
}

- (void)adDidReceiveImpressionEventForAdapter:(id<MPAdAdapter>)adapter {
    _hasImpressionFired = YES;
}

#pragma mark - MPAdAdapterFullscreenEventDelegate

- (void)adAdapter:(id<MPAdAdapter>)adapter handleFullscreenAdEvent:(MPFullscreenAdEvent)fullscreenAdEvent {
    // no op
}

#pragma mark - MPAdAdapterRewardEventDelegate

- (NSString *)customerId {
    return @"customerId";
}

- (id<MPMediationSettingsProtocol>)instanceMediationSettingsForClass:(Class)aClass {
    return nil;
}

- (void)adShouldRewardUserForAdapter:(id<MPAdAdapter>)adapter reward:(MPReward *)reward {
    _rewardGivenToUser = reward;
}

@end
