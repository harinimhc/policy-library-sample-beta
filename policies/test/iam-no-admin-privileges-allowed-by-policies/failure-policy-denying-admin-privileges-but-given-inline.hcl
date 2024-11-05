mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-policy-denying-admin-privileges-but-given-inline/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./mocks/policy-failure-policy-denying-admin-privileges-but-given-inline/mock-tfstate-v2.sentinel"
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

test {
  rules = {
    main = false
  }
}