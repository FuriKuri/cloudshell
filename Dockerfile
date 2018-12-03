FROM gcr.io/cloudshell-images/cloudshell:latest

# Add your content here

# To trigger a rebuild of your Cloud Shell image:

# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at https://gcr.io/furi-kuri/cloudshell
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/furi-kuri/r/cloudshell

RUN GOPATH=/google/gopath go get -u github.com/golang/protobuf/protoc-gen-go
RUN apt-get install -y httpie
RUN npm install -g serverless
RUN apt-get install -y grc
RUN apt-get install -y zsh
RUN apt-get install -y zsh-syntax-highlighting