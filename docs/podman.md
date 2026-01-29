# Podman

Para rodar com test containers
```
Erro: 
```
[requestTraceId: ] [country: ] --- [           main] .t.d.DockerMachineClientProviderStrategy: docker-machine executable was not found on PATH ([/home/userntt/.local/share/mise/installs/lazygit/0.58.1, /home/userntt/.local/share/mise/installs/node/24.13.0/bin, /home/userntt/.local/bin, /home/userntt/.sdkman/candidates/maven/current/bin, /home/userntt/.sdkman/candidates/kotlin/current/bin, /home/userntt/.sdkman/candidates/java/current/bin, /home/userntt/.sdkman/candidates/detekt/current/bin, /usr/local/bin, /usr/bin, /usr/local/sbin, /usr/sbin])
2026-01-29 10:31:37.642 ERROR 192.168.68.117 --- [serviceName: ] [requestTraceId: ] [country: ] --- [           main] o.t.d.DockerClientProviderStrategy      : Could not find a valid Docker environment. Please check configuration. Attempted configurations were:
	UnixSocketClientProviderStrategy: failed with exception InvalidConfigurationException (Could not find unix domain socket). Root cause AccessDeniedException (/var/run/docker.sock)
	DockerDesktopClientProviderStrategy: failed with exception NullPointerException (Cannot invoke "java.nio.file.Path.toString()" because the return value of "org.testcontainers.dockerclient.DockerDesktopClientProviderStrategy.getSocketPath()" is null)As no valid configuration was found, execution cannot continue.
See https://java.testcontainers.org/on_failure.html for more details.
```
systemctl --user enable --now podman.socket   
export DOCKER_HOST=unix://${XDG_RUNTIME_DIR}/podman/podman.sock
```
