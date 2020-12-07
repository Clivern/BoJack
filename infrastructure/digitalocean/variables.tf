# Copyright 2019 Clivern
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

variable "do_token" {
  type        = string
  description = "Digitalocean API Token"
}

variable "region" {
  type        = string
  default     = "ams3"
  description = "Digitalocean Region"
}

variable "cluster_name" {
  type        = string
  default     = "clivern"
  description = "Server Name"
}

variable "cluster_version" {
  type        = string
  default     = "1.23.9-do.0"
  description = "Cluster Version"
}

variable "node_count" {
  type        = number
  default     = 2
  description = "Node Count"
}

variable "droplet_size" {
  type        = string
  default     = "s-1vcpu-2gb"
  description = "Server Size"
}
