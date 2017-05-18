set -eu
cd "$(dirname "${BASH_SOURCE}")/.."

base_dir="${PWD}"
toolchain_dir="$(realpath -s "${base_dir}/../..")"

src_dir="${base_dir}/src"

ccache_dir="${base_dir}/ccache"
image_dir="${base_dir}/image"
prefix="${toolchain_dir}/out/usr"

package_name="$(basename "${base_dir}")"
package_file="${base_dir}/${package_name}.tar"
metadata_file="${prefix}/packages/${package_name}"

mkdir -p "${ccache_dir}" "${image_dir}"
