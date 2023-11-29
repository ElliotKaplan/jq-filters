.results[][] |
reduce .[] as $row (
       {};
       .[$row.status | tostring] += 1
)