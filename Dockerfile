
# ---------------------------------------------------------
# Build ID: v2 - Added metadata label for CI/CD testing
# ---------------------------------------------------------

FROM tomcat:latest

# Non-functional metadata for tracking build origin
LABEL ci.build.note="Pipeline test - safe change; no app ok ok  impact"

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY webapp/target/*.war /usr/local/tomcat/webapps
