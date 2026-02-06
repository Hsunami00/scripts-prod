
class Widgets():
    def __init__(self):
        pass

    def create_cube_control(self, cube_name=None, scale=[1, 1, 1]):
        if not cube_name:
            cube_name = "cube_curve"
        newcube = cmds.curve(d=1,
                             p=[(-1.5, 1.5, 1.8),
                                (1.5, 1.5, 1.8),
                                (1.5, 1.5, -1.8),
                                (-1.5, 1.5, -1.8),
                                (-1.5, 1.5, 1.8),
                                (-1.5, -1.5, 1.8),
                                (1.5, -1.5, 1.8),
                                (1.5, -1.5, -1.8),
                                (-1.5, -1.5, -1.8),
                                (-1.5, -1.5, 1.8),
                                (1.5, -1.5, 1.8),
                                (1.5, 1.5, 1.8),
                                (1.5, 1.5, -1.8),
                                (1.5, -1.5, -1.8),
                                (-1.5, -1.5, -1.8),
                                (-1.5, 1.5, -1.8)],
                             k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], name=cube_name)
        cmds.scale(scale[0], scale[1], scale[2], newcube)
        cmds.makeIdentity(newcube, apply=True, t=1, r=1, s=1, n=0)
        return cube_name

    def create_circle_control(self, circle_name=None, scale=[1, 1, 1]):
        if not circle_name:
            circle_name = "curve_circle"
        circle_x = cmds.circle(ch=True, o=True, nr=(1, 0, 0), r=(0.5), name=circle_name)
        circle_y = cmds.circle(ch=True, o=True, nr=(0, 1, 0), r=(0.5), name="circle_y")
        circle_z = cmds.circle(ch=True, o=True, nr=(0, 0, 1), r=(0.5), name="circle_z")
        cmds.select(cmds.listRelatives(circle_y, shapes=True, pa=True)[0],
                    cmds.listRelatives(circle_z, shapes=True, pa=True)[0])
        cmds.select(circle_x, add=True)
        cmds.parent(s=True, r=True)
        cmds.delete(circle_y, circle_z)
        cmds.select(d=True)

        cmds.scale(scale[0], scale[1], scale[2], circle_name)
        cmds.makeIdentity(circle_name, apply=True, t=1, r=1, s=1, n=0)

        return circle_name

    def create_pelvis_control(self, pelvis_name=None, scale=1):
        if not pelvis_name:
            pelvis_name = "pelvis_curve"
        newpelvis = cmds.curve(d=3,
                               p=[(24.585414725369017, 23.162725445518376, -22.065283207218311),
                                  (-6.9693863558734143e-15, -23.162725445518372, -17.5030348033618),
                                  (-24.585414725368945, 23.162725445518376, -22.065283207218336),
                                  (-42.328672193241211, 3.7666547665244186, -12.739397199432846),
                                  (-42.728876999181779, 3.7666547665244186, -4.9558203542023513e-15),
                                  (-42.328672193241218, 3.7666547665244186, 12.739397199432831),
                                  (-24.585414725368977, 23.162725445518376, 22.065283207218336),
                                  (-1.5518587626061498e-14, -23.162725445518376, 17.503034803361786),
                                  (24.585414725368931, 23.162725445518376, 22.065283207218343),
                                  (42.328672193241196, 3.7666547665244186, 12.739397199432858),
                                  (42.728876999181786, 3.7666547665244186, 2.7447171328493659e-14),
                                  (42.328672193241218, 3.7666547665244186, -12.739397199432814),
                                  (24.585414725369017, 23.162725445518376, -22.065283207218311),
                                  (-6.9693863558734143e-15, -23.162725445518372, -17.5030348033618),
                                  (-24.585414725368945, 23.162725445518376, -22.065283207218336)
                                  ],
                               k=[-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], name=pelvis_name)
        cmds.scale(scale, scale, scale, newpelvis)
        cmds.makeIdentity(newpelvis, apply=True, t=1, r=1, s=1, n=0)
        return pelvis_name

    def create_cone_control(self, cone_name=None):
        if not cone_name:
            cone_name = "cube_curve"

    def create_single_arrow_control(self):
        pass

    def create_four_way_arrow_control(self, arrow_name=None, scale=[1, 1, 1]):
        if not arrow_name:
            arrow_name = "world_control_curve"
        newarrow = cmds.curve(d=1, p=[(-8, 0, -14),
                                      (-5, 0, -47),
                                      (-13, 0, -47),
                                      (0, 0, -60),
                                      (13, 0, -47),
                                      (5, 0, -47),
                                      (8, 0, -14),
                                      (44, 0, -5),
                                      (44, 0, -13),
                                      (60, 0, 0),
                                      (44, 0, 13),
                                      (44, 0, 5),
                                      (8, 0, 14),
                                      (5, 0, 47),
                                      (13, 0, 47),
                                      (0, 0, 60),
                                      (-13, 0, 47),
                                      (-5, 0, 47),
                                      (-8, 0, 14),
                                      (-44, 0, 5),
                                      (-44, 0, 13),
                                      (-60, 0, 0),
                                      (-44, 0, -13),
                                      (-44, 0, -5),
                                      (-8, 0, -14)],
                              k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
                                 24],
                              name=arrow_name)

        cmds.scale(scale[0], scale[1], scale[2], newarrow)
        cmds.makeIdentity(newarrow, apply=True, t=1, r=1, s=1, n=0)
        return newarrow

    def create_sphere_curve(self):
        pass
