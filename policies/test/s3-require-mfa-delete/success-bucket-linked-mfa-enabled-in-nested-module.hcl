mock "tfconfig/v2" {
  module {
    source = "./mocks/success-bucket-linked-mfa-enabled-in-nested-module/mock-tfconfig-v2.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "./mocks/success-bucket-linked-mfa-enabled-in-nested-module/mock-tfplan-v2.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "tfconfig-functions" {
  module {
    source = "../../../modules/tfconfig-functions/tfconfig-functions.sentinel"
  }
}

mock "tfplan-functions" {
  module {
    source = "../../../modules/tfplan-functions/tfplan-functions.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}