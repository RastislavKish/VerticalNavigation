r=luajava.newInstance("android.graphics.Rect")

if service.isInWebView(node)==false then
node.getBoundsInScreen(r)
originCenter=r.centerX()
originBottom=r.bottom

parentNode=node.getParent()
for i=0, parentNode.getChildCount()-1 do
ithNode=parentNode.getChild(i)
ithNode.getBoundsInScreen(r)

if r.top>=originBottom and r.right>originCenter and r.left<originCenter then
service.accessibilityFocus(ithNode)
break
end
end
else
cell=node.getParent()

cell.getBoundsInScreen(r)
originCenter=r.centerX()
originBottom=r.bottom

tableNode=cell.getParent().getParent()
if tableNode.getChild(tableNode.getChildCount()-1).hashCode()==cell.getParent().hashCode() then
service.scrollForward(cell.getParent())
end

for row=0, tableNode.getChildCount()-1 do

rowNode=tableNode.getChild(row)
found=false

for column=0, rowNode.getChildCount()-1 do
ithNode=rowNode.getChild(column)
ithNode.getBoundsInScreen(r)

if r.top>=originBottom and r.right>originCenter and r.left<originCenter then
service.accessibilityFocus(ithNode.getChild(0))
service.setFocusView(ithNode.getChild(0))
found=true
break
end
end

if found==true then
break
end
end

end
