package policy

import data.policy.allow

default deny_after_mfa = false

deny_after_mfa {
	input.method == "GET"
	input.user.email == "mageshjoy651@example.com"
	input.user.mfa_done == true
}
