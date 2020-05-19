local linkedList = require(LinkedList).list
local LinkedNode = require(LinkedList).node

--linkedList:EnableLog(true)

print("--------------initiulize-----------------")
local test1 = linkedList({1,2,3,nil,"vale1","vale2"})
print(test1,"lenth: ",test1:Len())

print("--------------add value-----------------")
test1:Add("addValue")
print(test1,"lenth: ",test1:Len())
test1:Add({"addtable",6,7})
print(test1,"lenth: ",test1:Len())
test1:AddFirst("first")
print(test1,"lenth: ",test1:Len())
test1:AddLast("last")
print(test1,"lenth: ",test1:Len())
print("--------------add node-----------------")
local test2 = linkedList({1,2,3})
local node1 = LinkedNode("head")
local node2 = LinkedNode("node1")
local node3 = LinkedNode("node2")
local node4 = LinkedNode("rail")
test2:AddNodeFirst(node1)
test2:AddNodeLast(node4)
print(test2,"lenth: ",test2:Len())
test2:AddNodeAfter(node1,node2)
test2:AddNodeBefore(node4,node3)
print(test2,"lenth: ",test2:Len())
print("--------------remove-----------------")
local test3 = linkedList({"head",2,3,4,5,6,7,"last"}) 
test3:Remove(3)
print(test3,"lenth: ",test3:Len())
local val1 = test3:GetNode(4)
print(val1,test3:GetNode(7))
print(test3,"lenth: ",test3:Len())
test3:RemoveNode(val1)
print(test3,"lenth: ",test3:Len())
test3:RemoveFirst()
print(test3,"lenth: ",test3:Len())
test3:RemoveLast()
print(test3,"lenth: ",test3:Len())
print("--------------other-----------------")
local test4 = linkedList({1,2,3,4,5,6,6,7})
print(test4:Find(5))
print(test4:Find(20))
print(test4:FindLast(6).Prev)
print(test4,"lenth: ",test4:Len())
test4:Clear()
print(test4,"lenth: ",test4:Len())
print("--------------other-----------------")
local test5 = linkedList({1,2,3,4,5})
local tab = {"head","tail"}
print(table.unpack(tab))
test5:CopyTo(tab,2)
print(table.unpack(tab))
local copy = test5:ToTable()
print(copy,#copy)
print(table.unpack(copy))
local clone = test5:Clone()
print(test5,"lenth: ",test5:Len())
print(test5:Contains(5),test5:Contains(8))
test5:Reverse()
print(test5,"lenth: ",test5:Len())
local index = 1
for item in test5:ipairer() do
	print("key: "..index..": ", "value: "..tostring(item))
	index = index + 1
end
