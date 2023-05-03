# Copyright (c) Facebook, Inc. and its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
include_guard(GLOBAL)

set(VELOX_FBTHRIFT_VERSION "2023.05.01.00")
set(VELOX_FBTHRIFT_BUILD_SHA256_CHECKSUM 
    7d6b9272c637a44767cb30e75d6f703fdfd6966bababa61fca773e68d299bfe0)
set(VELOX_FBTHRIFT_SOURCE_URL 
    "https://github.com/facebook/fbthrift/archive/refs/tags/v${VELOX_FBTHRIFT_VERSION}.tar.gz") 

resolve_dependency_url(FBTHRIFT)

message(STATUS "Building FBThrift from source ${VELOX_FBTHRIFT_SOURCE_URL} - ${VELOX_FBTHRIFT_BUILD_SHA256_CHECKSUM}")
FetchContent_Declare(
  fbthrift
  URL ${VELOX_FBTHRIFT_SOURCE_URL}
  URL_HASH ${VELOX_FBTHRIFT_BUILD_SHA256_CHECKSUM})

FetchContent_MakeAvailable(fbthrift)

add_dependencies(fbthrift fmt)
