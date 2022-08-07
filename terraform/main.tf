provider "yandex" {
  token     = var.YC_TOKEN
  cloud_id  = var.YC_CLOUD_ID
  folder_id = var.YC_FOLDER_ID
  zone      = var.YC_ZONE
}

resource "yandex_vpc_network" "network-1" {
  name = "net"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  v4_cidr_blocks = ["10.1.0.0/24"]
  zone           = var.YC_ZONE
  network_id     = yandex_vpc_network.network-1.id
}

resource "yandex_compute_instance" "node01" {

   name     = "node01"
   hostname = "clickhouse-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      #image_id = "fd8aqitd4vl5950ihohp" moy
      image_id = "fd879gb88170to70d38a"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "${file("~/.ssh/id_rsa.pub")}"
    #"user-data": "#cloud-config\nusers:\n  - name: sergej\n    groups: sudo\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtmbo9LPEt3EyYAa3cY6tt2hQ2ZRdl9YUdpp+CpW67iVQn7BxRk0xzilSsWg7GzdMQijQx5jhmkeq2dOGuitRnkGEZzKz/zU/ACmlXS9p3P4VIrsDg36QMfy+qjc01V388SQWSNQLU4NVd0EBSLdx/nitqhADSt9iekrfqkhlqGFNvUnCC+bcSswgD1OKXcCWB8gHAzYKfDR4Ck255FRInalOfpkmKTDo/VOjxR919kdKZiy6jslFP1wVZ60M+aa7Ku/07U0lNH56zz7kQArprr4R4AohsLAv2xfPOR6wOMg0Do3T6YXEZia7diMxeDbC+G6rprAMtoglmXEVCpC3Nx2AdFVaTtpKKRoJQOd5AvgzqkT0kj38E0ho1r+c8Y3S3OpZROPzBrnkqkFLW+wfx0z69UyLoDKmmkLq9yUJqLewYaZLzXsIFANb5SEl6LttJ9Beo6Hv1pCNB8dz9ItrH9p63YfoOWhr7duPZbqTvAMB1yJXYzoKwt+96RY3vf4k= sergej@fedora\n      "
  }
}

resource "yandex_compute_instance" "node02" {

   name     = "node02"
   hostname = "vector-01"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8aqitd4vl5950ihohp"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
    #"user-data": "#cloud-config\nusers:\n  - name: sergej\n    groups: sudo\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtmbo9LPEt3EyYAa3cY6tt2hQ2ZRdl9YUdpp+CpW67iVQn7BxRk0xzilSsWg7GzdMQijQx5jhmkeq2dOGuitRnkGEZzKz/zU/ACmlXS9p3P4VIrsDg36QMfy+qjc01V388SQWSNQLU4NVd0EBSLdx/nitqhADSt9iekrfqkhlqGFNvUnCC+bcSswgD1OKXcCWB8gHAzYKfDR4Ck255FRInalOfpkmKTDo/VOjxR919kdKZiy6jslFP1wVZ60M+aa7Ku/07U0lNH56zz7kQArprr4R4AohsLAv2xfPOR6wOMg0Do3T6YXEZia7diMxeDbC+G6rprAMtoglmXEVCpC3Nx2AdFVaTtpKKRoJQOd5AvgzqkT0kj38E0ho1r+c8Y3S3OpZROPzBrnkqkFLW+wfx0z69UyLoDKmmkLq9yUJqLewYaZLzXsIFANb5SEl6LttJ9Beo6Hv1pCNB8dz9ItrH9p63YfoOWhr7duPZbqTvAMB1yJXYzoKwt+96RY3vf4k= sergej@fedora\n      "
  }
}