@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-stage"
		namespace: "creative-studio-stage"
	}
	app: "creative-studio"
	image: {
        repository: "43.205.228.58/creative-studio-stage/creative-studio"
        digest: "sha256:c0c3f70a97b8307baba64b85e5aa7dde28e285ab1a44f94ca591dbc349a7c214"
		tag: ""
    }
	replicas: 2
	service: {
		port:     5000
		nodePort: 32001
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 3
	}
	resources: {
		requests: {
			cpu:    "150m"
			memory: "192Mi"
		}
		limits: {
			cpu:    "300m"
			memory: "384Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "600m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1200m"
			memory: "1.5Gi"
		}
		pods: "7"
	}
	limits: {
		default: {
			cpu:    "300m"
			memory: "384Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "192Mi"
		}
	}
	storage: {
		enabled: true
		size:    "768Mi"
		class:   "local-path"
	}
	message: "creative studio running (stage)"
}
