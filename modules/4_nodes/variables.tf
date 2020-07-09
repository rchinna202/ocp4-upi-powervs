################################################################
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Licensed Materials - Property of IBM
#
# ©Copyright IBM Corp. 2020
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################


variable "service_instance_id" {}

variable "processor_type" {}
variable "system_type" {}
variable "network_name" {}
variable "rhcos_image_name" {}

variable "bastion_ip" {}
variable "cluster_domain" {}
variable "cluster_id" {}

variable "bootstrap" {
    default = {
        count       = 1
        memory      = "16"
        image_name  = "RHCOS-4.4"
        processors  = "2"
    }
}

variable "master" {
    default = {
        count       = 3
        memory      = "16"
        image_name  = "RHCOS-4.4"
        processors  = "2"
    }
}

variable "worker" {
    default = {
        count       = 2
        memory      = "8"
        image_name  = "RHCOS-4.4"
        processors  = "2"
    }
}
