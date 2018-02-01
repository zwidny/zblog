from __future__ import absolute_import, unicode_literals

from .base import *

DEBUG = False
SECRET_KEY=os.environ['SECRET_KEY']
ALLOWED_HOSTS = ['192.168.1.119', ]

try:
    from .local import *
except ImportError:
    pass
