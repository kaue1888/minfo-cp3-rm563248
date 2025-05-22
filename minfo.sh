[ "$1" = hostname ] && { hostname; exit; }
[ "$1" = uptime ] && { uptime -p /; exit; }
[ "$1" = disk ] && { df -h /; exit; }
[ "$1" = all ] && { hostname;df -h;uptime -p exit; }
[ -z "$1" ] && { cat README.md; exit; }

echo "Uso $0 {hostname|uptime|disk|all}"
exit 1 