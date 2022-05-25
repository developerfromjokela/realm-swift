////////////////////////////////////////////////////////////////////////////
//
// Copyright 2016 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#import <Realm/Realm.h>

NS_ASSUME_NONNULL_BEGIN

@interface RLMUser (ObjectServerTests)

- (BOOL)waitForUploadToFinish:(NSString *)partitionValue;
- (BOOL)waitForDownloadToFinish:(NSString *)partitionValue;

- (BOOL)waitForUploadsForRealm:(RLMRealm *)realm;
- (BOOL)waitForDownloadsForRealm:(RLMRealm *)realm;

- (void)simulateClientResetErrorForSession:(NSString *)partitionValue;

@end

NS_ASSUME_NONNULL_END
