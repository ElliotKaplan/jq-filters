# reads json output by dirsearch and returns a dict of links, sorted
# by status codes

.results[0] | keys[0] as $dom |
.[$dom] | reduce .[] as $row (
        {};
        .[$row.status | tostring] += $dom + $row.path + "\n"
)
