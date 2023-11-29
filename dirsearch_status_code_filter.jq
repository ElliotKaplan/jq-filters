# reads json output by dirsearch and returns a dict of status codes and counts
.results[][] |
reduce .[] as $row (
       {};
       .[$row.status | tostring] += 1
)