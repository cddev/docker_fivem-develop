FROM wearingstorm/fivem

MAINTAINER wearingstorm

# Add needed folders
RUN rm -rf /app/_resources
COPY resources /app/_resources
COPY server-config/ /app/fivem-server/

# Make info file about this build
RUN printf "Build of wearingstorm/fivem_liferp:latest, date: %s\n"  `date -u +"%Y-%m-%dT%H:%M:%SZ"`
