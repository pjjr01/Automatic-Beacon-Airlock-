config:
alias Eairdoor d0
define beacon -188177083

check:
l r1 d0 Open
bnez r1 turnon
sb beacon On 0
j check

turnon:
sb beacon On 1
j check