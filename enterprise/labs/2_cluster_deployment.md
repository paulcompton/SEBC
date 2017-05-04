```
{
  "timestamp" : "2017-05-03T05:30:10.214Z",
  "clusters" : [ {
    "name" : "paulcompton",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "593494016"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "593494016"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3433247539"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "577"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-5-197.ap-southeast-2.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-3d0ce384f280e673ac752e7cc8257812",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0c868cd639f432f4f"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-511b157cadd5cd61405720b3b6e77ade",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-093cb89260925b24b"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3xzbd4iukvupuapfb7qcjlhmb"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e3ipt7ma73wl2fxibunje0s8o"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "593494016"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bn70w2c465ai5ikjyni7w2w16"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-511b157cadd5cd61405720b3b6e77ade",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-093cb89260925b24b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "614zlk8l1xwzvr8f75vpqnve"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "40juthsjk8af7mpqzgv2lpg2l"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-5-197.ap-southeast-2.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "huepassword"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-9f9b1e7a47bf58ae4dda9a497c5297ed"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "83n6cwunc3lcg69nftnhxhkc5"
          }, {
            "name" : "secret_key",
            "value" : "1BSelnqG3aFi9ZxYdUxyIo1zj9Pt6z"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-5-197.ap-southeast-2.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "593494016"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a9ke9bpgu6ccrfhyk7kyco9hd"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "593494016"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3537"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "593494016"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4939"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "eYgiY79gCqFe0cs84xA7hTwKTLtj7d"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "394wy2rcyxgm50e9m8w4g89ms"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3d0ce384f280e673ac752e7cc8257812",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0c868cd639f432f4f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6rorww9asq9rezje0fjyhr4i9"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-511b157cadd5cd61405720b3b6e77ade",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-093cb89260925b24b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "50cbz3tenv3kejogza3j29vts"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ybcwab9uz11l86adeqit25c4"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "48"
          }, {
            "name" : "role_jceks_password",
            "value" : "cpb3uli16pbqlmzi6hkwqjsac"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "593494016"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3219965132"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "fs_trash_interval",
            "value" : "1"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "aOWHCQEiIRg19ws3vFrBnOhCDBvhwy"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "5WIAg1i5my70zbrDAHvG2SUugpsoQI"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "hKzMuuQGeiGjmhSEjytccSNDVvufK3"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-3d0ce384f280e673ac752e7cc8257812",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0c868cd639f432f4f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2twcfbite65fdim203ahhp8lc"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-511b157cadd5cd61405720b3b6e77ade",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-093cb89260925b24b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "49i5dqw6hfhh57szht9nl4rmy"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6esyc5dgspzes6zy9zhem1eu9"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4zf62payt48p5u6761i30tv7a"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1yalqd2xmil3iwqxmm7c78wq1"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cw2fdjecwttahk3izkgfnx5ji"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9wq6av8j5pk1agsohmx6vrdmp"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-511b157cadd5cd61405720b3b6e77ade",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-093cb89260925b24b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "uu2453lay0qhi4x47j2em9ri"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eeqldxu2sonv046thavfu1jxm"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-4bd8b1ed2b8895bfc715c39efe3e86f1",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0d826139aeec679bd"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "50"
          }, {
            "name" : "role_jceks_password",
            "value" : "dxepu8k4gfax9gwiva86o9512"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-9f9b1e7a47bf58ae4dda9a497c5297ed",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0f35c51f5fc0b47f1"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "56"
          }, {
            "name" : "role_jceks_password",
            "value" : "6ii8y4y38uha4xnpgip12z9tk"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-0d826139aeec679bd",
    "ipAddress" : "172.31.1.73",
    "hostname" : "ip-172-31-1-73.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "i-0f35c51f5fc0b47f1",
    "ipAddress" : "172.31.5.110",
    "hostname" : "ip-172-31-5-110.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "i-093cb89260925b24b",
    "ipAddress" : "172.31.5.197",
    "hostname" : "ip-172-31-5-197.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0216fc23f8938f376",
    "ipAddress" : "172.31.8.254",
    "hostname" : "ip-172-31-8-254.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0c868cd639f432f4f",
    "ipAddress" : "172.31.9.1",
    "hostname" : "ip-172-31-9-1.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-4bd8b1ed2b8895bfc715c39efe3e86f1",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d6c40078aede81d247252fd75466c63c1b35fd46a17094ec2e9a850b6a3b3ac4",
    "pwSalt" : -1901694030024603110,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-4bd8b1ed2b8895bfc715c39efe3e86f1",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "a8dc5b4b2b0f78eeeb5bd06f53112b50aec23c556cee2f35ffcf92d016cc4d0f",
    "pwSalt" : 4482769408643800746,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-4bd8b1ed2b8895bfc715c39efe3e86f1",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "b13baf62b888e0c56b748c08c9775d6653894cb89a98550c54764f20a80b10d9",
    "pwSalt" : 6318326635977218657,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-4bd8b1ed2b8895bfc715c39efe3e86f1",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4e77ccedcaf215d9cd41a2b00c4b2361ed1e35eb713c0f3f4de0528268e4fc58",
    "pwSalt" : 3904093737881623180,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "2c4679486ef068999547b39db823dee56fba9c38f26ea117c6f7838368d24511",
    "pwSalt" : 2943271079839133698,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "32fda869a057080eb148bc23e2146a13a7f84b58f4ea6f5cdf81c334158f8d1a",
    "pwSalt" : -7473721095593494031,
    "pwLogin" : true
  }, {
    "name" : "paulcompton",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "36d250558ee42d01ba2e154becfeeaca9b3dc7d2c0557a8d8211be86429ddc84",
    "pwSalt" : -6730278492520446111,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.9.2",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20170330-1814",
    "gitHash" : "822da28bff818f57fc1bfc3eafe3a550300ef1b0",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "593494016"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-5-197.ap-southeast-2.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "593494016"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-4bd8b1ed2b8895bfc715c39efe3e86f1",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-0d826139aeec679bd"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9fi4em294wkhbug4di3i8g0i"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-4bd8b1ed2b8895bfc715c39efe3e86f1",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-0d826139aeec679bd"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "ejrl9mxusndsk6kinxhvhqihq"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-4bd8b1ed2b8895bfc715c39efe3e86f1",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-0d826139aeec679bd"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "au50fer7yutalcgt7rthjwiz8"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-4bd8b1ed2b8895bfc715c39efe3e86f1",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-0d826139aeec679bd"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4py4zdfk8znic37bh4d6gnkrs"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-4bd8b1ed2b8895bfc715c39efe3e86f1",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-0d826139aeec679bd"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "3rou44ajdiogx894udrlqi84s"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 11:40"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```