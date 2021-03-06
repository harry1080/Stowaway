echo "Building Stowaway(agent)....."

CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -trimpath -ldflags="-w -s" -o linux_x86_agent
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -ldflags="-w -s" -o linux_x64_agent
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -trimpath -ldflags="-w -s" -o windows_x64_agent.exe
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -trimpath -ldflags="-w -s" -o windows_x86_agent.exe
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -trimpath -ldflags="-w -s" -o macos_agent
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build -trimpath -ldflags="-w -s" -o arm_eabi5_agent
CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go build -trimpath -ldflags="-w -s" -o mipsel_agent