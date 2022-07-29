FROM atlassian/default-image:3
#Install pip for Python 3
#Copy intended files for build script
WORKDIR /tmp
COPY ./nodeSetUnsafe.sh /tmp/nodeSetUnsafe.sh
RUN chmod +x /tmp/nodeSetUnsafe.sh

# Install yarn & Playwright for Node
RUN /tmp/nodeSetUnsafe.sh && \
npm install --global yarn && \
npm install @playwright/test && \
npx playwright install-deps && \
npx playwright install

RUN DEBIAN_FRONTEND=noninteractive playwright install-deps