#pragma once

#include "ofxLua.h"

class ofxOscLua {
public:
    static void setup(lua_State *L);
    static void luaopen(lua_State *L);  
};
