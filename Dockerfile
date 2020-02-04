FROM linuxbrew/brew

RUN brew tap aws/tap; \
    brew install awscli aws-sam-cli

RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash - && \
    apt-get -y install nodejs && \
    rm -rf /var/lib/apt/lists/*
