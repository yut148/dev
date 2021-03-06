
if [ ! -e "${metadata_file}" ]; then
  exit 0
fi

while read -d $'\0' i; do
  file="$(realpath -s "${prefix}/${i}")"
  if [ -d "${file}" ]; then
    rmdir --ignore-fail-on-non-empty "${file}"
  else
    rm -f "${file}"
  fi
done < "${metadata_file}"
