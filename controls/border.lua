function update_border()
    if time() - animation > 0.08 then

        animation = time()

        for x = 0,15 do

            local block = mget(x,0)

            if block < 23 then
                mset(x,0,block+1)
            else
                if mget(x-1,0) == 17 then
                    mset(x,0,16)
                end
            end

        end

        for y = 1,14 do

            local block = mget(15,y)

            if mget(15,0) == 16 then
                mset(15,1,16)
            end

            if block < 23 then
                mset(15,y,block+1)
            else
                if mget(15,y-1) == 16 then
                    mset(15,y,16)
                end
            end

        end

        for x = 0,15 do

            local block = mget(x,15)

            if block < 23 then
                mset(x,15,block+1)
            else
                if mget(x+1,15) == 16 then
                    mset(x,15,16)
                end
            end

        end

    end
end
