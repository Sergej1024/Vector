```yaml
sergej@fedora:~/GIT_SORE/Vector/terraform [±|main ↓2 U:2 ✗|] $ terraform apply --auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # local_file.inventory will be created
  + resource "local_file" "inventory" {
      + content              = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "../ansible/inventory/prod.yml"
      + id                   = (known after apply)
    }

  # null_resource.cluster will be created
  + resource "null_resource" "cluster" {
      + id = (known after apply)
    }

  # null_resource.wait will be created
  + resource "null_resource" "wait" {
      + id = (known after apply)
    }

  # yandex_compute_instance.node01 will be created
  + resource "yandex_compute_instance" "node01" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "clickhouse-01"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtmbo9LPEt3EyYAa3cY6tt2hQ2ZRdl9YUdpp+CpW67iVQn7BxRk0xzilSsWg7GzdMQijQx5jhmkeq2dOGuitRnkGEZzKz/zU/ACmlXS9p3P4VIrsDg36QMfy+qjc01V388SQWSNQLU4NVd0EBSLdx/nitqhADSt9iekrfqkhlqGFNvUnCC+bcSswgD1OKXcCWB8gHAzYKfDR4Ck255FRInalOfpkmKTDo/VOjxR919kdKZiy6jslFP1wVZ60M+aa7Ku/07U0lNH56zz7kQArprr4R4AohsLAv2xfPOR6wOMg0Do3T6YXEZia7diMxeDbC+G6rprAMtoglmXEVCpC3Nx2AdFVaTtpKKRoJQOd5AvgzqkT0kj38E0ho1r+c8Y3S3OpZROPzBrnkqkFLW+wfx0z69UyLoDKmmkLq9yUJqLewYaZLzXsIFANb5SEl6LttJ9Beo6Hv1pCNB8dz9ItrH9p63YfoOWhr7duPZbqTvAMB1yJXYzoKwt+96RY3vf4k= sergej@fedora
            EOT
        }
      + name                      = "node01"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v1"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd8aqitd4vl5950ihohp"
              + name        = (known after apply)
              + size        = (known after apply)
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + host_affinity_rules = (known after apply)
          + placement_group_id  = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # yandex_compute_instance.node02 will be created
  + resource "yandex_compute_instance" "node02" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "vector-01"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtmbo9LPEt3EyYAa3cY6tt2hQ2ZRdl9YUdpp+CpW67iVQn7BxRk0xzilSsWg7GzdMQijQx5jhmkeq2dOGuitRnkGEZzKz/zU/ACmlXS9p3P4VIrsDg36QMfy+qjc01V388SQWSNQLU4NVd0EBSLdx/nitqhADSt9iekrfqkhlqGFNvUnCC+bcSswgD1OKXcCWB8gHAzYKfDR4Ck255FRInalOfpkmKTDo/VOjxR919kdKZiy6jslFP1wVZ60M+aa7Ku/07U0lNH56zz7kQArprr4R4AohsLAv2xfPOR6wOMg0Do3T6YXEZia7diMxeDbC+G6rprAMtoglmXEVCpC3Nx2AdFVaTtpKKRoJQOd5AvgzqkT0kj38E0ho1r+c8Y3S3OpZROPzBrnkqkFLW+wfx0z69UyLoDKmmkLq9yUJqLewYaZLzXsIFANb5SEl6LttJ9Beo6Hv1pCNB8dz9ItrH9p63YfoOWhr7duPZbqTvAMB1yJXYzoKwt+96RY3vf4k= sergej@fedora
            EOT
        }
      + name                      = "node02"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v1"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = (known after apply)

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + block_size  = (known after apply)
              + description = (known after apply)
              + image_id    = "fd8aqitd4vl5950ihohp"
              + name        = (known after apply)
              + size        = (known after apply)
              + snapshot_id = (known after apply)
              + type        = "network-hdd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + host_affinity_rules = (known after apply)
          + placement_group_id  = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # yandex_vpc_network.network-1 will be created
  + resource "yandex_vpc_network" "network-1" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "net"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_subnet.subnet-1 will be created
  + resource "yandex_vpc_subnet" "subnet-1" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "subnet1"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.1.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + external_ip_address_node01 = (known after apply)
  + external_ip_address_node02 = (known after apply)
  + internal_ip_address_node01 = (known after apply)
  + internal_ip_address_node02 = (known after apply)
yandex_vpc_network.network-1: Creating...
yandex_vpc_network.network-1: Creation complete after 1s [id=enpq84ufh9nkvba9ol4g]
yandex_vpc_subnet.subnet-1: Creating...
yandex_vpc_subnet.subnet-1: Creation complete after 1s [id=e9bboq044ed2s2eek1fa]
yandex_compute_instance.node02: Creating...
yandex_compute_instance.node01: Creating...
yandex_compute_instance.node01: Still creating... [10s elapsed]
yandex_compute_instance.node02: Still creating... [10s elapsed]
yandex_compute_instance.node02: Still creating... [20s elapsed]
yandex_compute_instance.node01: Still creating... [20s elapsed]
yandex_compute_instance.node02: Creation complete after 29s [id=fhmm46aq76ttfkqgaclp]
yandex_compute_instance.node01: Still creating... [30s elapsed]
yandex_compute_instance.node01: Creation complete after 32s [id=fhmiupumjbe8mqtbqdf9]
local_file.inventory: Creating...
local_file.inventory: Creation complete after 0s [id=55f50b35ba6cbde5220e4f7d042f5b8850f90a0d]
null_resource.wait: Creating...
null_resource.wait: Provisioning with 'local-exec'...
null_resource.wait (local-exec): Executing: ["/bin/sh" "-c" "sleep 50"]
null_resource.wait: Still creating... [10s elapsed]
null_resource.wait: Still creating... [20s elapsed]
null_resource.wait: Still creating... [30s elapsed]
null_resource.wait: Still creating... [40s elapsed]
null_resource.wait: Still creating... [50s elapsed]
null_resource.wait: Creation complete after 50s [id=93634994297703077]
null_resource.cluster: Creating...
null_resource.cluster: Provisioning with 'local-exec'...
null_resource.cluster (local-exec): Executing: ["/bin/sh" "-c" "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory/prod.yml ../ansible/site.yml"]

null_resource.cluster (local-exec): PLAY [Install Clickhouse] ******************************************************

null_resource.cluster (local-exec): TASK [Gathering Facts] *********************************************************
null_resource.cluster (local-exec): ok: [clickhouse-01]

null_resource.cluster (local-exec): TASK [Get clickhouse distrib] **************************************************
null_resource.cluster (local-exec): changed: [clickhouse-01] => (item=clickhouse-client)
null_resource.cluster (local-exec): changed: [clickhouse-01] => (item=clickhouse-server)
null_resource.cluster (local-exec): failed: [clickhouse-01] (item=clickhouse-common-static) => {"ansible_loop_var": "item", "changed": false, "dest": "./clickhouse-common-static-22.3.3.44.rpm", "elapsed": 0, "item": "clickhouse-common-static", "msg": "Request failed", "response": "HTTP Error 404: Not Found", "status_code": 404, "url": "https://packages.clickhouse.com/rpm/stable/clickhouse-common-static-22.3.3.44.noarch.rpm"}

null_resource.cluster (local-exec): TASK [Get clickhouse distrib] **************************************************
null_resource.cluster: Still creating... [10s elapsed]
null_resource.cluster (local-exec): changed: [clickhouse-01]

null_resource.cluster (local-exec): TASK [Install clickhouse packages] *********************************************
null_resource.cluster: Still creating... [20s elapsed]
null_resource.cluster: Still creating... [30s elapsed]
null_resource.cluster (local-exec): changed: [clickhouse-01]

null_resource.cluster (local-exec): TASK [Flush handlers] **********************************************************

null_resource.cluster (local-exec): RUNNING HANDLER [Start clickhouse service] *************************************
null_resource.cluster (local-exec): changed: [clickhouse-01]

null_resource.cluster (local-exec): TASK [Create database] *********************************************************
null_resource.cluster (local-exec): changed: [clickhouse-01]

null_resource.cluster (local-exec): PLAY [Install Vector] **********************************************************

null_resource.cluster (local-exec): TASK [Gathering Facts] *********************************************************
null_resource.cluster (local-exec): ok: [vector-01]

null_resource.cluster (local-exec): TASK [Vector download] *********************************************************
null_resource.cluster (local-exec): ok: [vector-01 -> localhost]

null_resource.cluster (local-exec): TASK [Create dirs] *************************************************************
null_resource.cluster: Still creating... [40s elapsed]
null_resource.cluster (local-exec): changed: [vector-01]

null_resource.cluster (local-exec): TASK [Copy Vector files] *******************************************************
null_resource.cluster (local-exec): changed: [vector-01]

null_resource.cluster (local-exec): TASK [Vector Unarchive] ********************************************************
null_resource.cluster (local-exec): changed: [vector-01]

null_resource.cluster (local-exec): TASK [Move Vector into your $PATH] *********************************************
null_resource.cluster (local-exec): changed: [vector-01]

null_resource.cluster (local-exec): TASK [Template it] *************************************************************
null_resource.cluster: Still creating... [50s elapsed]
null_resource.cluster (local-exec): changed: [vector-01]

null_resource.cluster (local-exec): PLAY RECAP *********************************************************************
null_resource.cluster (local-exec): clickhouse-01              : ok=5    changed=4    unreachable=0    failed=0    skipped=0    rescued=1    ignored=0
null_resource.cluster (local-exec): vector-01                  : ok=7    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

null_resource.cluster: Creation complete after 51s [id=2423815384577374377]

Apply complete! Resources: 7 added, 0 changed, 0 destroyed.

Outputs:

external_ip_address_node01 = "62.84.112.250"
external_ip_address_node02 = "51.250.67.146"
internal_ip_address_node01 = "10.1.0.14"
internal_ip_address_node02 = "10.1.0.10"
sergej@fedora:~/GIT_SORE/Vector/terraform [±|main ↓2 U:2 ?:1 ✗|] $ 
```