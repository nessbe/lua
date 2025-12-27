-- File:       lua.lua
-- Project:    lua
-- Repository: https://github.com/nessbe/lua
--
-- Copyright (c) 2025 nessbe
-- This file is part of the lua project and is licensed
-- under the terms specified in the LICENSE file located at the
-- root of this repository.
--
-- Unless required by applicable law or agreed to in writing,
-- the software is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the LICENSE file for details.

project "lua"
	kind "StaticLib"
	language "C"
	cdialect "C99"

	targetdir "%{wks.location}/build/bin/%{prj.name}"
	objdir "%{wks.location}/build/obj/%{prj.name}"

	files {
		"include/**.h",
		"source/**.c"
	}

	removefiles {
		"source/lua.c",
		"source/luac.c"
	}

	includedirs {
		"include/lua"
	}

	filter "configurations:debug"
		symbols "On"
		runtime "Debug"

	filter "configurations:release"
		optimize "On"
		runtime "Release"
