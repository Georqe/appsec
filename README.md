# appsec

Summary:
This script gives a quick and automated way to check your Dockerfile for best practices and your Docker environment for security vulnerabilities.

Hadolint: This part of the script lints your Dockerfile to ensure best practices are followed. If Hadolint finds any issues, it reports them; otherwise, it confirms no issues were found.
Docker Bench Security: This runs the security checks against your Docker environment. It uses Docker's official docker-bench-security image to evaluate your Docker installation's security configuration.


Steps to ensure proper execution:
1. Ensure Hadolint is installed using command "brew install hadolint"
2. Pull docker Bench Security image using command "docker pull docker/docker-bench-security" 
3. Ensure that both the run-security-checks.sh file and the Dockerfile intended to be scanned are both located in the same directory
4. Make the script executable using command "chmod +x run-security-checks.sh"
5. Run the script using command "./run-security-checks.sh"
