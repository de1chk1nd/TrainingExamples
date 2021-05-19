{
  "$schema": "https://raw.githubusercontent.com/F5Networks/f5-declarative-onboarding/master/src/schema/latest/base.schema.json",
  "schemaVersion": "1.0.0",
  "class": "Device",
  "async": true,
  "webhook": "https://example.com/myHook",
  "label": "my BIG-IP declaration for declarative onboarding",
  "Common": {
    "class": "Tenant",
    "myLicense": {
      "class": "License",
      "licenseType": "regKey",
      "regKey": "AAAAA-BBBBB-CCCCC-DDDDD-EEEEEEE"
    },
    "myNtp": {
      "class": "NTP",
      "servers": [
        "0.pool.ntp.org",
        "1.pool.ntp.org",
        "2.pool.ntp.org"
      ],
      "timezone": "Europe/Berlin"
    },
    "guestUser": {
      "class": "User",
      "userType": "regular",
      "password": "guestNewPass1",
      "partitionAccess": {
        "Common": {
          "role": "guest"
        }
      }
    },
    "myProvisioning": {
      "class": "Provision",
      "ltm": "nominal",
      "asm": "nominal"
    },
    "external": {
      "class": "VLAN",
      "tag": 4094,
      "mtu": 1500,
      "interfaces": [
        {
          "name": "1.1",
          "tagged": false
        }
      ],
      "cmpHash": "src-ip"
    },
    "external-self": {
      "class": "SelfIp",
      "address": "10.1.10.205/24",
      "vlan": "external",
      "allowService": "none",
      "trafficGroup": "traffic-group-local-only"
    },
    "default": {
      "class": "Route",
      "gw": "10.1.10.2",
      "network": "default",
      "mtu": 1500
    },
    "dbvars": {
      "class": "DbVariables",
      "ui.advisory.enabled": true,
      "ui.advisory.color": "green",
      "ui.advisory.text": "Changed by DO"
    }
  }
}
