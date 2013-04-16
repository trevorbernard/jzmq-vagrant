name "jzmq"
description "get a base box set up with JZMQ"
run_list("recipe[java::oracle_via_webupd8]",
         "recipe[zeromq::ppa]",
         "recipe[jzmq]")
default_attributes(
  :java => {
    :install_flavor => 'oracle_via_webupd8',
    :jdk_version => '6'
  }
)
