module Test_route =
	let conf ="10.40.11.102/32 via 10.40.8.1
10.1.8.0/24 via 10.40.8.1
"

	test Route.lns get conf =
	{ "10.40.8.1" = "10.40.11.102/32" }
	{ "10.40.8.1" = "10.1.8.0/24" }