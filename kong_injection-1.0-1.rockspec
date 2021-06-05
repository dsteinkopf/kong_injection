package = "kong_injection"
version = "1.0-1"
source = {
   url = "git://github.com/dsteinkopf/kong_injection",
   branch="master"
}
description = {
   summary = "# Kong plugin for detection of SQL injections and XSS code",
   detailed = "# Kong plugin for detection of SQL injections and XSS code",
   homepage = "https://github.com/dsteinkopf/kong_injection",
   license = "MIT"
}
dependencies = {
	  "lua >= 5.1",
	  "lua-resty-injection == dev-1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong_injection.access"] = "kong/plugins/kong_injection/access.lua",
      ["kong.plugins.kong_injection.handler"] = "kong/plugins/kong_injection/handler.lua",
      ["kong.plugins.kong_injection.schema"] = "kong/plugins/kong_injection/schema.lua"
   }
}
