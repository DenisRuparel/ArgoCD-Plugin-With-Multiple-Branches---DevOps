@if(!debug)
package main

values: {
    metadata: {
        name:      *"creative-studio-prod" | string
        namespace: *"creative-studio-prod" | string
    }
    app: "creative-studio"

    image: {
        repository: "13.127.49.107/creative-studio-prod/creative-studio"
        digest: "sha256:2980f6b37fff7e05a053ea1d14eefa70747d2d2e5873c0ac13e8bd0a3b0e4336"
		tag: ""
    }
	replicas: 3
	service: {
		port:     5000
		nodePort: 32000
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 5
	}
	resources: {
		requests: {
			cpu:    "200m"
			memory: "256Mi"
		}
		limits: {
			cpu:    "400m"
			memory: "512Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "800m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1500m"
			memory: "1.5Gi"
		}
		pods: "10"
	}
	limits: {
		default: {
			cpu:    "400m"
			memory: "512Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "256Mi"
		}
	}
	storage: {
		enabled: true
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative studio running (prod)"
}

