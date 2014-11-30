override["nfs"]["packages"] = ["portmap", "nfs-common", "nfs-kernel-server"]
override["nfs"]["port"]["statd"] = 32765
override["nfs"]["port"]["statd_out"] = 32766
override["nfs"]["port"]["mountd"] = 32767
override["nfs"]["port"]["lockd"] = 32768
override["nfs"]["exports"] = [
  "/var/nfs/share 10.1.1.1/24(rw,sync,no_subtree_check,no_root_squash,insecure)"
]
