select
  min((pA.x - pB.x) * -1 )
from
  point as pA
  cross join
    point as pB;
