# @summary Provides system-wide defaults for GID settings
#
# @param min
#   The lowest allowed regular user GID for the system
#
# @param max
#   The highest allowed regular user GID for the system
#
#   * If not defined, applications should simply do what makes sense for them
#     internally
#
# @author https://github.com/simp/pupmod-simp-simp_options/graphs/contributors
#
class simp_options::gid (
  Integer[0]           $min = pick(fact('login_defs.gid_min'), 1000),
  Optional[Integer[1]] $max = fact('login_defs.gid_max')
){
  assert_private()
}
