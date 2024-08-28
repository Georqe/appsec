# AppSec

## Summary

This script provides a quick and automated way to check your Dockerfile for best practices and assess your Docker environment for security vulnerabilities.

### Components

- **Hadolint**: This part of the script lints your Dockerfile to ensure best practices are followed. If Hadolint finds any issues, it reports them; otherwise, it confirms that no issues were found.
- **Docker Bench Security**: This component runs security checks against your Docker environment. It uses Docker's official `docker-bench-security` image to evaluate your Docker installation's security configuration.

## Steps to Ensure Proper Execution

1. **Install Hadolint**: Ensure Hadolint is installed by running the following command:
    ```sh
    brew install hadolint
    ```

2. **Pull Docker Bench Security Image**: Pull the Docker Bench Security image using the following command:
    ```sh
    docker pull docker/docker-bench-security
    ```

3. **Prepare the Environment**:
    - Ensure that both the `run-security-checks.sh` file and the Dockerfile intended to be scanned are located in the same directory.

4. **Make the Script Executable**: Grant execution permission to the script using the following command:
    ```sh
    chmod +x run-security-checks.sh
    ```

5. **Run the Script**: Execute the script with the following command:
    ```sh
    ./run-security-checks.sh
    ```

---

Feel free to modify this file to suit your specific needs.
