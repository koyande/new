resource "okta_idp_social" "exam" {
  type          = "GOOGLE"
  protocol_type = "OIDC"
  name          = "testAcc"

  scopes = [
    "profile",
    "email",
  ]

  client_id         = "113651654757-efo1qome9c1gc66hsb35u37c7fr59n5h.apps.googleusercontent.com"
  client_secret     = "h2fyOfCMgI95zRHGoIzwmKP5"
  username_template = "idpuser.email"
  subject_match_type        = "CUSTOM_ATTRIBUTE"
  subject_match_attribute   = "customfieldId"
 }
