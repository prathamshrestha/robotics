## *********************************************************
##
## File autogenerated for the image_proc package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Interpolation algorithm between source image pixels', 'max': 4, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'interpolation', 'edit_method': "{'enum_description': 'interpolation type', 'enum': [{'srcline': 9, 'description': 'Nearest neighbor', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/image_proc/cfg/Rectify.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'NN'}, {'srcline': 10, 'description': 'Linear', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/image_proc/cfg/Rectify.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Linear'}, {'srcline': 11, 'description': 'Cubic', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/image_proc/cfg/Rectify.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Cubic'}, {'srcline': 12, 'description': 'Lanczos4', 'srcfile': '/home/jetauto/jetauto_ws/src/third_party/image_pipeline/image_proc/cfg/Rectify.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'Lanczos4'}]}", 'default': 1, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Rectify_NN = 0
Rectify_Linear = 1
Rectify_Cubic = 2
Rectify_Lanczos4 = 4
