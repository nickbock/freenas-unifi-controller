FROM goofball222/unifi:sc
LABEL org.freenas.interactive="false" \
      org.freenas.version="5.6.24"\
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="https" \
      org.freenas.web-ui-port="8443" \
      org.freenas.web-ui-path="manage" \
      org.freenas.port-mappings="3478:3478/udp,6789:6789/tcp,8080:8080/tcp,8443:8443/tcp,8843:8843/tcp,8880:8880/tcp,10001:10001/udp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/usr/lib/unifi/data\",					\
              \"descr\": \"UniFi configuration data and DBs\"			\
          },\
          {								\
              \"name\": \"/usr/lib/unifi/cert\",					\
              \"descr\": \"SSL custom certificate storage\"			\
          },          							\
          {								\
              \"name\": \"/usr/lib/unifi/logs\",					\
              \"descr\": \"UniFi and MongoDB logs for troubleshooting\"		    \
          }								\
      ]"                                \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          }								\
      ]"
