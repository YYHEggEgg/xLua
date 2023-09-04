-- MOVE, LOADK, LOADBOOL, LOADNIL
local a = nil
local b = true
local c = "string"
local ff = "The releases of Lua are numbered x.y.z, where x.y is the version and z is the release.  Different releases of the same version correspond to bug fixes. Different releases of the same version have the same reference manual, the same virtual machine,"

-- GETUPVAL, SETUPVAL
function upvalueTest()
    local d = a
    a = c
end

-- GETTABLE, SETTABLE, NEWTABLE
local t = {}
t["key"] = "value"
local e = t["key"]

-- SELF
local obj = { value = 5, method = function(self) return self.value end }
obj:method()

-- ADD, SUB, MUL, MOD, POW, DIV, IDIV
local fff = 1238912839
local f = ((fff + fff) - fff) * fff % fff ^ fff / fff // fff

-- BAND, BOR, BXOR, SHL, SHR
local g = ((fff & fff) | fff) ~ fff << fff >> fff

-- UNM, BNOT, NOT, LEN
local h = -f
local i = ~fff
local j = not b
local k = #"string"

-- CONCAT
local l = "Hello" .. " " .. "World"

-- JMP, EQ, LT, LE, TEST, TESTSET
if a == nil and b ~= false and c < "z" and fff <= fff then
    local m = true
end

local aaaa = 10
local baaa = 20

if #t["a"] < #t["b"] then
  print("a is less than b")
else
  print("a is greater than or equal to b")
end

-- CALL, CLOSURE
local function add(x, y) return x + y end
add(1, 2)

-- TAILCALL
local function tailcall() return add(3, 4) end
tailcall()

-- FORLOOP, FORPREP
for i = 1, 10 do
    print(i)
end

-- TFORCALL, TFORLOOP
local function iter() return next, t, nil end
for k, v in iter() do
    print(k, v)
end

-- SETLIST
local list = {1, 2, 3, 4, 5}

-- VARARG
local function varargTest(...)
    local n = select("#", ...)
end
varargTest(1, 2, 3, 4, 5)

-- EXTRAARG
-- 无法在 Lua 中直接生成，这是一个特殊的 opcode，用于 vararg 和函数调用
local b = 1234567890498162408961157690142765091564326547896879600976097609690606999990999999999966606065857859069
local c = 0915643265478968796009760976096906069999909999999197843613678136436436.4343434343434
print(b - c)

-- additional
function test()
	boy = {money = 200, t = 200}
	function boy.goToMarket(self ,someMoney)
		self.money = self.money - someMoney
		self.money = self.t
        fff = fff + 1
	end
	boy:goToMarket(100)
	local t1 = 1
	local t2 = t1
	local t3 = t2 and t1 or t1
	t1 = nil
	t1 = true
	t2 = (-(t1)) - t1 * t2 / t2 % t2 ^ t2 + t2
	t3 = {}
	t3 = {"foo","bar"}
	for k , _ in t3 do
        fff = fff + 1
	end
	function f0(...)
        k = k + 14134
        fff = fff + 1
	end
	function f1(n)
		function f2(...)
            fff = fff + 1
			f0(...)
			n = 200
			print(#n .. "foobar")
			if not t2 then
				t1 = t1 > t2
				t1 = t2 <= t1
				t1 = t2 == t1
				t1 = t2 ~=t1
				t1 = not t2
			else
			end
		end
		return f2(300)
	end
	for k=1, f1(3) do
        k = k ^ 1
        fff = fff + 1
	end
end

-- RETURN
return test