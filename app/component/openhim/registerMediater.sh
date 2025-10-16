SALT=d9bcb40e-ae65-478f-962e-5e5e5e7d0a01
PASSWORD='Pa$$w0rd'
USERNAME='root@openhim.org'
NOW=$(date -u +"%Y-%m-%dT%H:%M:%S.%3NZ")
PASSHASH=$(echo -n "${SALT}${PASSWORD}" | sha512sum | awk '{print $1}')
TOKEN=$(echo -n "${PASSHASH}${SALT}${NOW}" | sha512sum | awk '{print $1}')

curl -k -X POST https://192.168.10.15:8080/mediators \
  -H "Content-Type: application/json" \
  -H "auth-username: ${USERNAME}" \
  -H "auth-ts: ${NOW}" \
  -H "auth-salt: ${SALT}" \
  -H "auth-token: ${TOKEN}" \
  -d @config.json
