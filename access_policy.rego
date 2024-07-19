package policy

default allow = false
deny_after_mfa = false

allow {
	input.user.age >= 19
}

deny_after_mfa {
    input.method == "GET"
    input.user.email == "mageshjoy651@example.com"
    input.user.mfa_done == true
}

