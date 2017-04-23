node default {
  stage { 'first':
    before => Stage['main'],
  }

  # APT is the only class running on first stage.
  class { '::apt':
    stage => first
  }

  class { '::docker': }

  class { '::etcd': }

  # class { 'kubernetes::client': }

  # class { '::kubernetes::master': }

  # class { '::kubernetes::master::apiserver': }

  # class { '::kubernetes::master::scheduler': }

  # class { '::kubernetes::node': }

  # class { '::kubernetes::node::kube_proxy': }

}
