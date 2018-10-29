target remote :1234
set architecture arm
define nextr
stepi
i r
end

define nextfive
stepi
stepi
stepi
stepi
stepi
i r
end

print "starting register values:"
i r

print "starting memory values:"
x/16i 0

print "starting memory values near pc:"
x/16i $pc

define xpc
print "memory values near (+/-8) pc:"
x/16i $pc-8
end

nextfive
nextfive

continue

