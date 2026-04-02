@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-beta"
		namespace: "creative-studio-beta"
	}
	app: "creative-studio"
	image: {
        repository: "3.7.100.53/creative-studio-beta/creative-studio"
        digest: "sha256:4b2c564e48aaff30349f9209f25fc927ccbd41ab8631e3abee5f169b02731dc8"
		tag: ""
    }
	replicas: 1
	service: {
		port:     5000
		nodePort: 32002
	}
	strategy: {
		maxUnavailable:  0
		maxSurge:        1
		minReadySeconds: 2
	}
	resources: {
		requests: {
			cpu:    "100m"
			memory: "128Mi"
		}
		limits: {
			cpu:    "250m"
			memory: "256Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "400m"
			memory: "512Mi"
		}
		limits: {
			cpu:    "800m"
			memory: "1Gi"
		}
		pods: "5"
	}
	limits: {
		default: {
			cpu:    "250m"
			memory: "256Mi"
		}
		defaultRequest: {
			cpu:    "100m"
			memory: "128Mi"
		}
	}
	storage: {
		enabled: false
		size:    "512Mi"
		class:   "local-path"
	}
	message: "creative studio running (beta)"
}
