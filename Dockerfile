FROM n3mur1t0r/deluge-flexget:latest
LABEL org.freenas.interactive="false" 					\
      org.freenas.version="1.3.14"	 					\
      org.freenas.upgradeable="true" 					\
      org.freenas.expose-ports-at-host="true" 				\
      org.freenas.autostart="true" 					\
      org.freenas.web-ui-protocol="http" 				\
      org.freenas.web-ui-port=8112 					\
      org.freenas.web-ui-path="" 					\
      org.freenas.port-mappings="8112:8112/tcp,58846:58846/tcp,58946:58946/tcp,58946:58946/udp" \
      org.freenas.volumes="[						\
          {							\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"				\
          },							\
          {							\
              \"name\": \"/downloads\",					\
              \"descr\": \"Downloads volume\"				\
          },							\
          {							\
              \"name\": \"/flexcfg\",					\
              \"descr\": \"FlexGet config\"				\
          }          \
      ]" 								\
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"TZ\",					\
              \"descr\": \"Timezone - eg Europe/London\",			\
              \"optional\": true					\
          },							\
          {							\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",					\
              \"optional\": true					\
          },							\
          {							\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",					\
              \"optional\": true					\
         }							\
      ]"