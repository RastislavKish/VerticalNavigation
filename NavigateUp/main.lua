r=luajava.newInstance("android.graphics.Rect")
node.getBoundsInScreen(r)
originCenter=r.centerX()
originTop=r.top

parentNode=node.getParent()
for i=parentNode.getChildCount()-1, 0, -1 do
ithNode=parentNode.getChild(i)
ithNode.getBoundsInScreen(r)

if r.bottom<=originTop and r.right>originCenter and r.left<originCenter then
service.accessibilityFocus(ithNode)
break
end
end
