resource "okta_idp_social" "exam" {
  type          = "GOOGLE"
  protocol_type = "OIDC"
  name          = "testAcc"

  scopes = [
    "profile",
    "email",
  ]

  client_id         = "113651654757-par6mh41lsnm3t0tv0rgcoku27f4ots9.apps.googleusercontent.com"
  client_secret     = "GQio2PX4RnYzeIOuTTWai4bG"
  username_template = "idpuser.email"
  subject_match_type        = "CUSTOM_ATTRIBUTE"
  subject_match_attribute   = "customfieldId"
 }
