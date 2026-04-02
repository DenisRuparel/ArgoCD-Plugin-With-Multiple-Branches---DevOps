@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-stage"
		namespace: "creative-studio-stage"
	}
	app: "creative-studio"
	image: {
        repository: "3.7.100.53/creative-studio-stage/creative-studio"
        digest: "sha256:7b9b13e7516047e85adf2233bbfb0a5e86ddce5b110f1192975a4bc9ea21e960"
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
