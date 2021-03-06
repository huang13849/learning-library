// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

compartment_ids = {
  sandbox = "ocid1.compartment.oc1..aaaaaaaaiu3vfcpbjwwgpil3xakqts4jhtjq42kktmisriiszdvvouwsirgq"
}
subnet_ids      = {
  hur1pub  = "ocid1.subnet.oc1.eu-zurich-1.aaaaaaaaaa5y7m6sijl24z5we37itchg4cga7wlzfck6exjaxf3qcr6tqx2a"
  hur1priv = "ocid1.subnet.oc1.eu-zurich-1.aaaaaaaaqmrzegawxhx3lem554otznorygybovk7a5ek5i75opbwv7kvo6yq"
}

linux_images = {
  ap-mumbai-1    = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaa46gx23hrdtxenjyt4p5cc3c4mbvyiqxcb3mmrxnmjn3rfxgvqcma"
  ap-seoul-1     = "ocid1.image.oc1.ap-seoul-1.aaaaaaaavwjewurl3nvcyq6bgpbrapk4wfwu6qz2ljlrj2yk3cfqexeq64na"
  ap-sydney-1    = "ocid1.image.oc1.ap-sydney-1.aaaaaaaae5qy5o6s2ve2lt4aetmd7s4ydpupowhs6fdl25w4qpkdidbuva5q"
  ap-tokyo-1     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa54xb7m4f42vckxkrmtlpys32quyjfldbkhq5zsbmw2r6v5hzgvkq"
  ca-toronto-1   = "ocid1.image.oc1.ca-toronto-1.aaaaaaaagupuj5dfue6gvpmlzzppvwryu4gjatkn2hedocbxbvrtrsmnc5oq"
  eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa3bu75jht762mfvwroa2gdck6boqwyktztyu5dfhftcycucyp63ma"
  eu-zurich-1    = "ocid1.image.oc1.eu-zurich-1.aaaaaaaadx6lizhaqdnuabw4m5dvutmh5hkzoih373632egxnitybcripb2a"
  sa-saopaulo-1  = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa3ke6hsjwdshzoh4mtjq3m6f7rhv4c4dkfljr53kjppvtiio7nv3q"
  uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaasutdhza5wtsrxa236ewtmfa6ixezlaxwxbw7vti2wyi5oobsgoeq"
  us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaaox73mjjcopg6damp7tssjccpp5opktr3hwgr63u2lacdt2nver5a"
  us-langley-1   = "ocid1.image.oc2.us-langley-1.aaaaaaaaxyipolnyhfw3t34nparhtlez5cbslyzbvlwxky6ph4mh4s22zmnq"
  us-luke-1      = "ocid1.image.oc2.us-luke-1.aaaaaaaa5dtevrzzxk35dwslew5e6zcqljtfu5hzolcedr467gzuqdg3ls5a"
  us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaauuj2b3bvpbtpcyrfdvxu7tuajrwsmajhn6uhvx4oquecap63jywa"
}

instance_params = {
  hur1 = {
    ad                   = 1
    shape                = "VM.Standard2.8"
    hostname             = "hur1"
    boot_volume_size     = 120
    preserve_boot_volume = true
    assign_public_ip     = true
    compartment_name     = "sandbox"
    subnet_name          = "hur1pub"
    ssh_public_key       = "/root/.ssh/id_rsa.pub"
    device_disk_mappings = "/u01:/dev/oracleoci/oraclevdb /u05:/dev/oracleoci/oraclevdc /u80:/dev/oracleoci/oraclevdd /u02:/dev/oracleoci/oraclevde /u03:/dev/oracleoci/oraclevdf /u04:/dev/oracleoci/oraclevdg"
    freeform_tags        = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  hur2 = {
    ad                   = 1
    shape                = "VM.Standard2.8"
    hostname             = "hur2"
    boot_volume_size     = 120
    use_custom_image     = "true"
    assign_public_ip     = false
    preserve_boot_volume = true
    compartment_name     = "sandbox"
    subnet_name          = "hur1pub"
    ssh_public_key       = "/root/.ssh/id_rsa.pub"
    device_disk_mappings = "/u01:/dev/oracleoci/oraclevdb"
    freeform_tags        = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
}

bv_params = {
  bv10 = {
    ad             = 1
    display_name   = "bv10"
    bv_size        = 50
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevdb"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv11 = {
    ad             = 1
    display_name   = "bv11"
    bv_size        = 70
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevdc"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv12 = {
    ad             = 1
    display_name   = "bv12"
    bv_size        = 60
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevdd"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv13 = {
    ad             = 1
    display_name   = "bv13"
    bv_size        = 80
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevde"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv14 = {
    ad             = 1
    display_name   = "bv14"
    bv_size        = 90
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevdf"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv15 = {
    ad             = 1
    display_name   = "bv15"
    bv_size        = 100
    instance_name  = "hur1"
    device_name    = "/dev/oracleoci/oraclevdg"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  bv20 = {
    ad             = 1
    display_name   = "bv20"
    bv_size        = 50
    instance_name  = "hur2"
    device_name    = "/dev/oracleoci/oraclevdb"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
}

windows_images = {
  ap-mumbai-1	   = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaa4eoqz2o7ssqm63dkzvny5sld5tibr2ynvmyyp6mwoeblfdcjjtkq"
  ap-seoul-1	   = "ocid1.image.oc1.ap-seoul-1.aaaaaaaakb7oq5eiao3rlyha6kf7emogydoy32p3mb22hn3gbwsm7ussfaca"
  ap-sydney-1	   = "ocid1.image.oc1.ap-sydney-1.aaaaaaaah4oxmrdqptmcbpdigixfhrxii7rkaspmpq4fppnn3wc6xas2simq"
  ap-tokyo-1	   = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaagltuwbdjcdfmvj4gkzb7e32g5aedu6yfdzbmmqkxrrv4d7shixia"
  ca-toronto-1	 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaa2iaism6emqvjzgszpnpi7v725herq7u2fdiwswgrplcv4u3g4w6a"
  eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa2rsmgdpbkbo5yrkpynd7mbl5nxpwhyrkp4nd4ev3hzcpfmkosu3q"
  eu-zurich-1	   = "ocid1.image.oc1.eu-zurich-1.aaaaaaaawo4g3t6s34okuj7huyrixkucmxtfaqeiqhvsfiok4gxhe3pdpmaa"
  sa-saopaulo-1	 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaanunxttcfebrg3t34jupfsiy2dqry4wkoaak5h3pckpitylzm44qq"
  uk-london-1	   = "ocid1.image.oc1.uk-london-1.aaaaaaaaanixvr63v5v5vvz5qv2c73m6vvc6okwrrqggfvqthyygalm536ra"
  us-ashburn-1	 = "ocid1.image.oc1.iad.aaaaaaaaizov2horgjtlxsklhi3cxxjxbcpxzxmtfj5jiftygo76fetussuq"
  us-langley-1	 = "ocid1.image.oc2.us-langley-1.aaaaaaaafiwiumrgcipjddg7cha7otxo46dd5hiw7za5llbwnugrgclxqbga"
  us-luke-1	     = "ocid1.image.oc2.us-luke-1.aaaaaaaaelf7bq6rtwsxhvkjh6eumoa77ebniwkbyntfti5gtkgvwqnk6dsq"
  us-phoenix-1	 = "ocid1.image.oc1.phx.aaaaaaaatte3vcpa7kkogul7zbvnxfjsgwzptmbx7n7qqrzk62skron5on7a"
}

win_instance_params = {
  win01 = {
    ad                   = 1
    shape                = "VM.Standard2.4"
    hostname             = "win01"
    boot_volume_size     = 400
    assign_public_ip     = true
    preserve_boot_volume = true
    compartment_name     = "sandbox"
    subnet_name          = "hur1pub"
    device_disk_mappings = "D:50GB E:60GB F:70GB"
    freeform_tags        = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
}

win_bv_params = {
  winbv10 = {
    ad             = 1
    display_name   = "winbv10"
    bv_size        = 50
    instance_name  = "win01"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  winbv11 = {
    ad             = 1
    display_name   = "winbv11"
    bv_size        = 70
    instance_name  = "win01"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
  winbv12 = {
    ad             = 1
    display_name   = "winbv12"
    bv_size        = 60
    instance_name  = "win01"
    freeform_tags  = {
      "client" : "hurricane",
      "department" : "hurricane"
    }
  }
}