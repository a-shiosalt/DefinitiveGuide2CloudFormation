curl -s https://ip-ranges.amazonaws.com/ip-ranges.json |\
 jq '.prefixes[] | select( .region=="ap-northeast-1" and .service== "EC2_INSTANCE_CONNECT" ) | .ip_prefix'
