      program test
      integer i

      i = 1
      print *, 'working'
      write (*,*) 'number',i
      do while (i .le. 100)
         if (mod(i,15) .EQ. 0) then
            print *, 'fizz buzz'
         elseif (mod(i,3) .EQ. 0) then
            print *, 'fizz'
         elseif (mod(i,5) .EQ. 0) then
            print *, 'buzz'
         else
            write (*,*) 'num',i
         endif
         i = i + 1      
      enddo
      
      stop
      end