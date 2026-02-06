sel = pm.selected()

for jnt in sel:
    jnt.rx.set( round( jnt.rx.get(), 2 ))
    jnt.ry.set( round( jnt.ry.get(), 2 ))
    jnt.rz.set( round( jnt.rz.get(), 2 ))

    jnt.tx.set( round( jnt.tx.get(), 2 ))
    jnt.ty.set( round( jnt.ty.get(), 2 ))
    jnt.tz.set( round( jnt.tz.get(), 2 ))