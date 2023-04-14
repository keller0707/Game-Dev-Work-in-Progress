function collide(obj1, obj2)

    local x1 = obj1.x
    local y1 = obj1.y

    local x2 = obj2.x
    local y2 = obj2.y

    if x1+4 > x2 and x1+4 < x2 + 7
    and y1+4 > y2 and y1+4 < y2 + 8 then

        return true

    end

    return false

end

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
      x1=x-1  
      y1=y
      x2=x    
      y2=y+h-1
     
    elseif aim=="right" then
      x1=x+w-1    
      y1=y
      x2=x+w  
      y2=y+h-1
     
    elseif aim=="up" then
      x1=x+2    
      y1=y-1
      x2=x+w-3  
      y2=y
     
    elseif aim=="down" then
      x1=x+2     
      y1=y+h
      x2=x+w-3    
      y2=y+h
    end
  
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