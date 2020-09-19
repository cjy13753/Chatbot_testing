#!/bin/bash
variable=$(mysql --login-path=root test_yourownwords -N -e "SELECT word, word_definition FROM words_to_memorize ORDER BY counts_of_memory ASC, word ASC LIMIT 5")

echo $variable

curl -X POST -H 'Content-type: application/json' --data "{'text': '$variable'}" https://hooks.slack.com/services/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