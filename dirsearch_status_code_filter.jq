# reads json output by dirsearch and returns a dict of status codes
# and counts of pages returning each code

.results[][] |
reduce .[] as $row (
       {};
       .[$row.status | tostring] += 1
)