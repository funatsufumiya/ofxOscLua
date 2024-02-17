#include "ofxOscLua.h"

// declare the wrapped modules
extern "C" {
	int luaopen_osc(lua_State *L);
}

void ofxOscLua::setup(lua_State *L) {
    luaopen_osc(L);
}

void ofxOscLua::luaopen(lua_State *L) {
    luaopen_osc(L);
}