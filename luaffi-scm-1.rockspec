package = "luaffi"
version = "scm-1"

source = {
   url = "git://github.com/jmckaskill/luaffi.git",
}

description = {
   summary = "FFI library for calling C functions from lua",
   detailed = [[
   ]],
   homepage = "https://github.com/jmckaskill/luaffi",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ffi = {
         incdirs = {
            "dynasm"
         },
         sources = {
            "call.c", "ctype.c", "ffi.c", "parser.c",
         }
      }
   }
}
