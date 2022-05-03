#!/usr/bin/env bash
LOG_FILE="../access.log"
my_array=()
function uniqueip() {
    while read -r line; do
        flag=0
        ip=$(echo "$line" | awk '{print $1}')

        for i in "${my_array[@]}"; do
            if ((flag == 0)); then

                if [[ "${i}" == "${ip}" ]]; then
                    flag=1
                fi

            fi
        done
        if ((flag == 0)); then
            my_array+=("${ip}")
            echo "${ip}"
        fi
    done <$LOG_FILE
}
uniqueip
