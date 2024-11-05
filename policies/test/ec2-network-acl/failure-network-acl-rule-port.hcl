mock "tfplan/v2" {
  module {
    source = "./mocks/failure-network-acl-rule-port/mock-tfplan-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

param "blocked_ports" {
  value = [22,3389]
}

test {
  rules = {
    main = false
  }
}