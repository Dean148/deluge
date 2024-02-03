provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "qOlE:US-ASHBURN-AD-2"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaabu63gdylhkg3erobxbgxi465l2ymkcjuer2x4yaoq6s6mvyulepa"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaaldk4qigcv7j7qgixm6qckp356sq6qnq7rkm54tdr75lvz7se45qa"
	}
	display_name = "instance-20240203-2009"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1/VIujGK38Iqp8Qw7IIgd2f3/g1F7wZSf0VivyNWW2sAFN/GDvcqrIRcR4uUgLFn5mtjlI+sSVYjzMIkYGTzoaw2UaKj0kzTKP3t+CXFr0WYEfnxyZL91gGwrw4t8PqMC1nUTrkbdn4WKhsykRxaW7qK6lI0FynHGc6fx4dicvVC14VCHE3sEhW06OqZ+BoeGvMSzG5rmAQL9plNRuwpoa2KYwClIGbnhx6yPrZktFXep8QytHRG2+4V7XTB60UKNmmEGi3iAIAPfA+dn34621Z7OPdrHhbGM4HV2eSLn11OnaMF73ZbpcsJSbwsUmTb0b2j/TY3z4z0K5NZkEcmV ssh-key-2024-02-02"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		boot_volume_size_in_gbs = "100"
		boot_volume_vpus_per_gb = "10"
		source_id = "ocid1.image.oc1.iad.aaaaaaaamphrdqdgcjfdmo5fzql4m6ewcuxkbepjbobgky254svsk3ueppfa"
		source_type = "image"
	}
}
