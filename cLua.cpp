#include <stdio.h>
extern "C" {
	#include "lua.h"
	#include "lauxlib.h"
	#include "lualib.h"
}


static void stackDump(lua_State *L){
	int i;
	int top = lua_gettop(L);
	printf("栈中元素：%d\n", top);
	printf("栈底    ---------->    栈顶\n");
	for(i = 1; i <= top; i++){
		int t = lua_type(L, i);
		switch(t){
			case LUA_TSTRING:{
				printf("'%s'", lua_tostring(L,i));
				break;
			}
			case LUA_TBOOLEAN:{
				printf("%s", lua_toboolean(L,i) ? "true":"false" );
				break;
			}
			case LUA_TNUMBER:{
				printf("%g", lua_tonumber(L, i));
				break;
			}
			default:{
				printf("%s",lua_typename(L,t));
				break;
			}
		}
		printf("  ");
	}

	printf("\n\n");
}


int main(void){
	lua_State *L = luaL_newstate();
	
	lua_pushboolean(L,1);
	lua_pushnumber(L,10);
	lua_pushnil(L);
	lua_pushstring(L, "Hello");
	stackDump(L);

	lua_pushvalue(L, -4);
	stackDump(L);

	lua_replace(L, 3);
	stackDump(L);

	lua_settop(L, 6);
	stackDump(L);

	lua_remove(L, -3);
	stackDump(L);

	lua_settop(L, -5);
	stackDump(L);
	

	lua_pushnumber(L, 10);
	stackDump(L);
	int nu = lua_tonumber(L, -1);
	printf("a=%d\n", nu);
	stackDump(L);

	printf("%d\n", LUA_REGISTRYINDEX);

	lua_close(L);

	return 0;

}
