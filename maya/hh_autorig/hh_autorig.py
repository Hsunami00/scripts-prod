# AUTORIG 3.0 By Hsunami
# rewriting using design patterns

import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm
import pymel.core.datatypes as dt
import maya.OpenMaya as om
import maya.OpenMayaAnim as oma
import maya.OpenMayaUI as omu
import maya.api.OpenMaya as api

import math
import sys

import hh_autorig.hh_utils as utils
import hh_autorig.widgets.widgets as widgets

RAD2DEG = (180 / math.pi)
DEG2RAD = (math.pi / 180)

UP_AXIS = api.MVector(0, 0, 1)
FORWARD_AXIS = api.MVector(0, -1, 0)


class Autorig:
    def __init__(self, name='hhutils_Autorig'):
        self.joint_placers = []


class BonePlacer:
    def __init__(self):
        self.bones = {'bonename': 'bone_world_matrix'}
        self.bone_parent = ''


class TorsoPlacer(BonePlacer):
    def __init__(self):
        print('created TorsoPlacer')


class ArmPlacer(BonePlacer):
    def __init__(self):
        print('created Arm Placer')


class PlantiLegPlacer(BonePlacer):
    def __init__(self):
        print('created Plantigrade Leg Placer')


class DigiLegPlacer(BonePlacer):
    def __init__(self):
        print('created Digitigrade Leg Placer')


class FingerPlacer(BonePlacer):
    def __init__(self):
        print('created Finger Placer')


class ToePlacer(BonePlacer):
    def __init__(self):
        print('created Toe Placer')


class EyePlacer(BonePlacer):
    def __init__(self):
        print('created Eye Placer')


class NosePlacer(BonePlacer):
    def __init__(self):
        print('created Nose Placer')


class LipsPlacer(BonePlacer):
    def __init__(self):
        print('created Lips Placer')