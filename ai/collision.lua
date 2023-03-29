-- collsion between player and map
function collide_map(obj,aim,flag)
    --obj = table needs x,y,w,h
    --aim = left,right,up,down
   
    local x=obj.x  
    local y=obj.y
    local w=obj.w  
    local h=obj.h
   
    local x1=0	 
    local y1=0
    local x2=0  
    local y2=0
   
    if aim=="left" then
      x1=x + 1
      y1=y
      x2=x + 1
      y2=y+h - 1
   
    elseif aim=="right" then
      x1=x+w - 1
      y1=y
      x2=x+w - 1
      y2=y+h - 1
   
    elseif aim=="up" then
      x1=x + 1
      y1=y
      x2=x+w - 2
      y2=y
   
    elseif aim=="down" then
      x1=x + 1
      y1=y+h - 1
      x2=x+w - 2
      y2=y+h - 1
    end

    --xr1 = x1
    --yr1 = y1
    --xr2 = x2
    --yr2 = y2
   
    --pixels to tiles
    x1/=8    
    y1/=8
    x2/=8    
    y2/=8
   
    if fget(mget(x1,y1), flag)
    or fget(mget(x1,y2), flag)
    or fget(mget(x2,y1), flag)
    or fget(mget(x2,y2), flag) then
      return true
    else
      return false
    end
   
end

-- given two objects, check if obj1 is in range of obj2
function in_range(obj1,obj2,range)

  local x1 = obj1.x + 4
  local y1 = obj1.y + 4

  local x2 = obj2.x + 4
  local y2 = obj2.y + 4

  --xr1 = x2 - range
  --yr1 = x2 + range
  --xr2 = y2 - range
  --yr2 = y2 + range

  if (x1 >= x2 - range) and (x1 <= x2 + range)
  and (y1 >= y2 - range) and (y1 <= y2 + range) then
      return true
  else
     return false
  end

end