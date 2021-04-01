r=luajava.newInstance("android.graphics.Rect")
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
